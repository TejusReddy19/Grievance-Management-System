from flask import Flask,render_template,request
import joblib
import mysql.connector
import numpy as np
import re
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer
import pandas as pd



def read_xl_file(df):
    for index, row in df.iterrows():
        na = (row['Name'])
        ea = (row['Phone Number'])
        ca = (row['Email Address'])
        da = (row['Description'])
        sub_form(na,ea,ca,da,2)
    
def analyze_Cat_logged(form_data):
    user_id = form_data['user_id']
    Description = form_data['Description']
    sub_form(user_id,"phone_no","email", Description,1)

def analyze_Cat(form_data):
    name=form_data['Uname']
    Pnumber=form_data['Pnum']
    EmailId=form_data['Email']
    Description=form_data['Description']
    sub_form(name,Pnumber,EmailId,Description,2)

def sub_form(name,Pnumber,EmailId,Description,user_type) :
    #model_path = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/LinearSVC_89.joblib'
    model_path = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/linear_svc_model_L92.joblib'
    #model_path1 = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/tfidf_vectorizer_89.joblib'

    linear_svc_clf = joblib.load(model_path)
    #tfidf_vectorizer = joblib.load(model_path1)

    model_path2 = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/SUB-ISSUES-INTI.joblib'
    model_path3 = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/SUB-ISSUES-INTI-tfidf_vectorizer.joblib'

    loaded_grid_search_sub = joblib.load(model_path2)
    tfidf_vectorizer_sub = joblib.load(model_path3)



    if not Description:
        print("Error: Description is missing or empty.")
    else:
        # Preprocess the new description using the same preprocessing function
        def predict_category_main(input_text):
            # Preprocess the input grievance text
            preprocessed_input = preprocess_text(input_text)
            # Use the trained model to predict the class label for the preprocessed input
            predicted_category_sub = linear_svc_clf.predict([preprocessed_input])
            return predicted_category_sub
    


        def predict_category_issue(input_text):
            input_transformed1 = tfidf_vectorizer_sub.transform([input_text])
            predicted_category_sub = loaded_grid_search_sub.predict(input_transformed1)[0]
            return predicted_category_sub
        

        def preprocess_text(text):
            # Convert text to lowercase
            text_lower = text.lower()
            
            # Remove special characters, numbers, and punctuation
            text_cleaned = re.sub(r'[^a-zA-Z\s]', '', text_lower)
            
            # Tokenization
            text_tokenized = word_tokenize(text_cleaned)
            
            # Remove stop words
            stop_words = set(stopwords.words('english'))
            text_filtered = [word for word in text_tokenized if word not in stop_words]
            
            # Lemmatization
            lemmatizer = WordNetLemmatizer()
            text_lemmatized = ' '.join([lemmatizer.lemmatize(word) for word in text_filtered])
            
            return text_lemmatized

        predicted_category = predict_category_main(Description)
        if isinstance(predicted_category, np.ndarray):
            predicted_category = predicted_category.item()  
        predicted_category_sub = predict_category_issue(Description)
    
        # Write the received values and predicted category to a file
        with open('output.txt', 'w') as f:
            f.write(f"Description: {Description}\n")
            f.write(f"Predicted Category: {predicted_category}\n")
            f.write(f"Predicted Category Issue: {predicted_category_sub}\n")

        # Print a message to indicate that the script has executed
        print("CGI script executed successfully")


        mydb=mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="customer_service"
        )
        mycurser=mydb.cursor()
        try:
            if user_type==2:
                mycurser.execute("insert into anonymous_submission(name,email,phone_no,problem_disc,predicted_category,predicted_issue) values(%s,%s,%s,%s,%s,%s)", (name,EmailId,Pnumber,Description,predicted_category,predicted_category_sub))
                mydb.commit()
            elif user_type==1:
                mycurser.execute("insert into logged_submission(user_id,problem_disc,predicted_category,predicted_issue) values(%s,%s,%s,%s)", (name,Description,predicted_category,predicted_category_sub))
                mydb.commit()
        except mysql.connector.Error as err:
            print(f"Error: {err}")
        finally:
            mycurser.close()
            mydb.close()
