from flask import Flask,render_template,request
import joblib
import mysql.connector

def analyze_Cat(form_data):
    name=form_data['Uname']
    Pnumber=form_data['Pnum']
    EmailId=form_data['Email']
    Description=form_data['Description']

    model_path = 'C:/Users/tejus/OneDrive/Desktop/PYTHON_FLASK/Dataset/grid_search_model_nb.joblib'
    loaded_grid_search = joblib.load(model_path)
    if not Description:
        print("Error: Description is missing or empty.")
        # Handle the error appropriately, e.g., return an error response to the user
    else:
        # Preprocess the new description using the same preprocessing function
        def preprocess_texts(texts):
            texts_lower = [text.lower() for text in texts]
            return texts_lower

        new_description_processed = preprocess_texts([Description])

        # Use the trained model to predict the category
        predicted_category = loaded_grid_search.predict(new_description_processed)[0]

        # Print the predicted category
        print("Predicted Category:", predicted_category)

        # Write the received values and predicted category to a file
        with open('output.txt', 'w') as f:
            f.write(f"Description: {Description}\n")
            f.write(f"Predicted Category: {predicted_category}\n")

        # Print a message to indicate that the script has executed
        print("CGI script executed successfully")


        mydb=mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="grievances"
        )
        mycurser=mydb.cursor()
        try:
            mycurser.execute("insert into predictions(description,predicted_category,name,Pnumber,EmailId) values(%s,%s,%s,%s,%s)", (Description,predicted_category,name,Pnumber,EmailId))
            mydb.commit()
        except mysql.connector.Error as err:
            print(f"Error: {err}")
        finally:
            mycurser.close()
            mydb.close()
