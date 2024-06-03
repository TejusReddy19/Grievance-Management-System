from flask import Flask, render_template, request, redirect, url_for, session, g,jsonify, flash
import mysql.connector
from pyscript import pridSVC,counts
import pandas as pd
from flask import session
import time

app = Flask(__name__)
app.secret_key = 'your_secret_key'

app.config['DATABASE'] = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'customer_service'
}

def get_database_connection():
    if 'database' not in g:
        g.database = mysql.connector.connect(**app.config['DATABASE'])
    return g.database

@app.teardown_appcontext
def close_database(error):
    if 'database' in g:
        g.database.close()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/report_problem')
def report_problem():
    return render_template('index.html')

@app.route('/User_Guide')
def User_Guide():
    return render_template('User_Guide.html')

@app.route('/otherlogin')
def other_login():
    return render_template('login_sup.html')

@app.route('/otherlogindata', methods=['POST'])
def get_other_login():
    Lname = request.form['uname']
    Lpass = request.form['pass']
    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "SELECT * FROM Support_data WHERE S_email = %s AND S_pass = %s"
            mycursor.execute(query, (Lname, Lpass))
            user_data = mycursor.fetchone()
            if user_data:
                session['Lname']=Lname
                session['Lpass']=Lpass
                session['current_person']='user'
                query = "SELECT * FROM unclassified_problem_category WHERE predicted_category = %s"
                query2 = "SELECT * FROM solved_cases WHERE predicted_category = %s"
                category=user_data[3]
                welcome_message = Lname  
                mycursor.execute(query, (category,))
                data = mycursor.fetchall()     
                mycursor.execute(query2, (category,))
                resolvedCasesData = mycursor.fetchall()
                return render_template('Support_data.html', data=data, resolvedCasesData=resolvedCasesData, welcome_message=welcome_message)
            else:
                return render_template('login_sup.html', error="Invalid credentials")
    except mysql.connector.Error as err:
        print(f"Error2222: {err}")
        return render_template('login_sup.html', error="Error accessing data")

@app.route('/login')
def login():
    return render_template('login.html')




@app.route('/loginData', methods=['POST'])
def get_login():
    Lname = request.form['uname']
    Lpass = request.form['pass']
    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "SELECT * FROM admin_data WHERE A_email = %s AND A_pass = %s"
            mycursor.execute(query, (Lname, Lpass))
            admin_data = mycursor.fetchone()
            if admin_data:
                session['current_person']='admin'
                session['Admin_logged_in'] = True
                session['Admin_id'] = admin_data[0]  # Set user_id session variable
                print("Retrieved user data:", admin_data)  # Print retrieved user data
                query = "SELECT * FROM unclassified_problem_category"
                mycursor.execute(query)
                data = mycursor.fetchall()
                query = "SELECT * FROM solved_cases"
                mycursor.execute(query)
                resolvedCasesData = mycursor.fetchall()
                welcome_message=admin_data[1] 
                session['Lname']=Lname
                session['Lpass']=Lpass
                return render_template('server.html', data=data, resolvedCasesData=resolvedCasesData,welcome_message=welcome_message)
            else:
                session['Admin_logged_in'] = False
                return render_template('login.html', error="Invalid credentials")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return render_template('error.html', message="Database error occurred")
    
def reloader_Fun():
    Lname=session['Lname']
    Lpass=session['Lpass']
    try:
        with mysql.connector.connect(host='localhost', user='root', password='', database='customer_service') as mydb, mydb.cursor() as mycursor:

            query = "SELECT * FROM admin_data WHERE A_email = %s AND A_pass = %s"
            mycursor.execute(query, (Lname, Lpass))
            admin_data = mycursor.fetchone()
            if admin_data:
                
                session['Admin_logged_in'] = True
                session['Admin_id'] = admin_data[0]  # Set user_id session variable
                print("Retrieved user data:", admin_data)  # Print retrieved user data
                query = "SELECT * FROM unclassified_problem_category"
                mycursor.execute(query)
                data = mycursor.fetchall()
                query = "SELECT * FROM solved_cases"
                mycursor.execute(query)
                resolvedCasesData = mycursor.fetchall()
                welcome_message=admin_data[1] 
                return data,resolvedCasesData,welcome_message
            else:
                session['Admin_logged_in'] = False
                return render_template('login.html', error="Invalid credentials")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return render_template('error.html', message="Database error occurred")

@app.route('/User_login')
def User_login():
    return render_template('User_logins.html')



@app.route('/process_data', methods=['POST'])
def get_value():
        name = request.form['Uname']
        form_data = request.form
        result = pridSVC.analyze_Cat(form_data)
        return render_template('submissionC.html', n=name)  

@app.route('/User_log_in_data', methods=['POST'])
def get_user_login():
    Lname = request.form['uname']
    Lpass = request.form['pass']
    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "SELECT * FROM user_login WHERE email = %s AND password = %s"
            mycursor.execute(query, (Lname, Lpass))
            user_data = mycursor.fetchone()
            if user_data:
                session['Lname']=Lname
                session['Lpass']=Lpass
                session['logged_in'] = True
                session['user_id'] = user_data[0]  # Set user_id session variable
                return render_template('Logind_user.html', user_data=user_data)
            else:
                session['logged_in'] = False
                return render_template('User_logins.html', error="Invalid credentials")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return render_template('error.html', message="Database error occurred")
    
@app.route('/User_process_data', methods=['POST'])
def get_User_value():
    if session.get('logged_in'):
        form_data1 = request.form
        result = pridSVC.analyze_Cat_logged(form_data1)
        Lname=session['Lname']
        Lpass=session['Lpass']
        try:
            with get_database_connection() as mydb, mydb.cursor() as mycursor:
                query = "SELECT * FROM user_login WHERE email = %s AND password = %s"
                mycursor.execute(query, (Lname, Lpass))
                user_data = mycursor.fetchone()
                if user_data:
                    session['logged_in'] = True
                    return render_template('Logind_user.html', user_data=user_data)
                else:
                    session['logged_in'] = False
                    return render_template('User_logins.html', error="Invalid credentials")
        except mysql.connector.Error as err:
            print(f"Error: {err}")
            return render_template('error.html', message="Database error occurred")
    else:
        return redirect(url_for('login'))  


@app.route('/record_details/<token>', methods=['GET'])
def record_details(token):
    record_details_data = get_record_details_from_database(token)
    return render_template('detail_view.html', data=record_details_data)

def get_record_details_from_database(token):
    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "SELECT * FROM unclassified_problem_category WHERE Token_Number = %s"
            params = (token,)
            mycursor.execute(query, params)
            record_details = mycursor.fetchone()
            return record_details
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

@app.route('/update_record/<int:token>', methods=['POST'])
def update_record_f(token):
    if 'current_person' not in session:
        # Handle the scenario when 'current_person' is not set
        return "User not logged in"
    
    token1 = request.form.get('token')
    Description = request.form.get('description')
    predicted_category = request.form.get('predicted_category')
    name = request.form.get('name')
    Pnumber = request.form.get('phone')
    TimeStamp = request.form.get('TS')
    EmailId = request.form.get('email')
    predicted_category_sub = request.form.get('issue')
    U_id = request.form.get('uid')
    Complaint_Category_final = request.form.get('complaint_category')

    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            mycursor.execute("INSERT INTO solved_Cases (Token_Number, problem_disc, predicted_category, predicted_issue, submission_timestamp, Name, Phone_Number, Email, user_id, Complaint_Category_final) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                                 (token1, Description, predicted_category, predicted_category_sub, TimeStamp, name, Pnumber, EmailId,U_id, Complaint_Category_final))
            mydb.commit()
            mycursor.execute("DELETE FROM unclassified_problem_category WHERE Token_Number = %s", (token1,))
            mydb.commit()
    except mysql.connector.Error as err:
        print(f"Error: {err}")

    user_type=session['current_person']
    if user_type == 'admin':
        data,resolvedCasesData,welcome_message=reloader_Fun()
        return render_template('server.html', data=data, resolvedCasesData=resolvedCasesData,welcome_message=welcome_message)
    elif user_type == 'user':
        Lname=session['Lname']
        Lpass=session['Lpass']
        try:
            with mysql.connector.connect(host='localhost', user='root', password='', database='customer_service') as mydb, mydb.cursor() as mycursor:
                query = "SELECT * FROM Support_data WHERE S_email = %s AND S_pass = %s"
                mycursor.execute(query, (Lname, Lpass))
                user_data = mycursor.fetchone()
                if user_data:

                    query = "SELECT * FROM unclassified_problem_category WHERE predicted_category = %s"
                    query2 = "SELECT * FROM solved_cases WHERE predicted_category = %s"
                    category=user_data[3]
                    welcome_message = Lname  
                    mycursor.execute(query, (category,))
                    data = mycursor.fetchall()     
                    mycursor.execute(query2, (category,))
                    resolvedCasesData = mycursor.fetchall()
                    return render_template('Support_data.html', data=data, resolvedCasesData=resolvedCasesData, welcome_message=welcome_message)
                else:
                    return render_template('login_sup.html', error="Invalid credentials")
        except mysql.connector.Error as err:
            print(f"Error2222: {err}")
            return render_template('login_sup.html', error="Error accessing data")
            pass
    else:
        return "Invalid user type"


    
@app.route('/upload', methods=['POST'])
def upload_file():
    if 'excelFile' not in request.files:
        return 'No file part'

    file = request.files['excelFile']

    if file.filename == '':
        return 'No selected file'

    if file:
        try:
            df = pd.read_excel(file)
            print(df.head())
            pridSVC.read_xl_file(df)
            data,resolvedCasesData,welcome_message=reloader_Fun()
            return render_template('server.html', data=data, resolvedCasesData=resolvedCasesData,welcome_message=welcome_message)
        except Exception as e:
            return f'Error processing file: {str(e)}'
        
@app.route('/get_counts', methods=['GET'])
def get_counts():
    submit_count = counts.get_submit_count()
    solved_count = counts.get_solved_count()
    return jsonify({'submit_count': submit_count, 'solved_count': solved_count})
# Add this route to your Flask app

@app.route('/get_previous_complaints', methods=['GET'])
def get_previous_complaints():
    if session.get('logged_in'):
        # Fetch current user's ID from session
        user_id = session['user_id']
        try:
            with get_database_connection() as mydb, mydb.cursor() as mycursor:
                # Query to fetch previous complaints for the current user
                query = "SELECT problem_disc, time_stamp, predicted_category, predicted_issue FROM logged_submission WHERE user_id = %s"
                mycursor.execute(query, (user_id,))
                previous_complaints = mycursor.fetchall()

                # Render HTML for previous complaints in a table
                html = '<table border="1">'
                html += '<tr><th>Problem Description</th><th>Time Stamp</th><th>Predicted Category</th><th>Predicted Issue</th></tr>'
                for complaint in previous_complaints:
                    html += '<tr>'
                    for column_data in complaint:
                        html += f'<td>{column_data}</td>'
                    html += '</tr>'
                html += '</table>'
                return jsonify({'success': True, 'html': html})
        except mysql.connector.Error as err:
            print(f"Error: {err}")
            return jsonify({'success': False, 'message': 'Failed to fetch previous complaints from the database.'})
    else:
        return jsonify({'success': False, 'message': 'User not logged in.'})

@app.route('/create_support_account', methods=['POST'])
def create_support_account():
    username = request.form['username']
    password = request.form['password']
    category = request.form['category']

    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "INSERT INTO Support_data (S_email, S_pass, S_cata) VALUES (%s, %s, %s)"
            mycursor.execute(query, (username, password, category))
            mydb.commit()
        data,resolvedCasesData,welcome_message=reloader_Fun()
        return render_template('server.html', data=data, resolvedCasesData=resolvedCasesData,welcome_message=welcome_message)
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return "Error creating support account."



@app.route('/User_Reg')
def User_regrestration():
    return render_template('user_Reg.html')

@app.route('/create_user_account', methods=['POST'])
def create_user_account():
    name = request.form['name']
    email = request.form['email']
    phone = request.form['phone']
    password = request.form['password']
    try:
        with get_database_connection() as mydb, mydb.cursor() as mycursor:
            query = "INSERT INTO user_login (name, email, phone_no, password) VALUES (%s, %s, %s, %s)"
            mycursor.execute(query, (name, email, phone, password))
            mydb.commit()
            flash('Account Creation successful!', 'success')
            return redirect(url_for('User_login'))
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        flash('error creating account', 'error')
        return render_template('user_Reg.html')
    
@app.route('/admin_logout')
def Admin_logout():
    session.pop('server_data', None)
    session.pop('resolvedCasesData', None)
    session.pop('welcome_message', None)
    session.pop('current_person', None)
    session.pop('Lname', None)
    session.pop('Lpass', None)
    session.pop('Admin_logged_in', None)
    flash('Logout successful!', 'success')
    return redirect(url_for('login'))

@app.route('/Support_logout')
def Support_logout():
    session.pop('server_data', None)
    session.pop('resolvedCasesData', None)
    session.pop('welcome_message', None)
    session.pop('current_person', None)
    session.pop('Lname', None)
    session.pop('Lpass', None)
    flash('Logout successful!', 'success')
    return redirect(url_for('other_login'))

@app.route('/User_logout')
def User_logout():
    session.pop('server_data', None)
    session.pop('resolvedCasesData', None)
    session.pop('welcome_message', None)
    session.pop('current_person', None)
    session.pop('Lname', None)
    session.pop('Lpass', None)
    flash('Logout successful!', 'success')
    return redirect(url_for('User_login'))

from collections import Counter

@app.route('/get_graph_data', methods=['GET'])
def get_graph_data():
    if session.get('logged_in'):
        try:
            with get_database_connection() as mydb, mydb.cursor() as mycursor:
                # Example query to fetch data for the graph
                query = "SELECT predicted_category FROM logged_submission WHERE user_id = %s"
                user_id = session['user_id']
                mycursor.execute(query, (user_id,))
                graph_data = mycursor.fetchall()

                # Count the occurrences of each predicted category
                category_counts = Counter(row[0] for row in graph_data)

                # Separate category labels and counts
                labels = list(category_counts.keys())
                counts = list(category_counts.values())


                # Construct a dictionary containing the graph data
                graph_data_dict = {'labels': labels, 'counts': counts}

                # Return the graph data as JSON
                return jsonify(graph_data_dict)
        except mysql.connector.Error as err:
            print(f"Error: {err}")
            return jsonify({'error': 'Failed to fetch graph data from the database.'})
    else:
        return jsonify({'error': 'User not logged in.'})
    


@app.route('/get_graph_data1', methods=['GET'])
def get_graph_data1():
    if session.get('logged_in'):
        try:
            with get_database_connection() as mydb, mydb.cursor() as mycursor:
                # Example query to fetch data for the graph
                query1 = "SELECT predicted_category FROM solved_cases WHERE user_id = %s"
                user_id = session['user_id']
                mycursor.execute(query1, (user_id,))
                graph_data1 = mycursor.fetchall()

                # Count the occurrences of each predicted category
                category_counts1 = Counter(row[0] for row in graph_data1)

                # Separate category labels and counts
                labels1 = list(category_counts1.keys())
                counts1 = list(category_counts1.values())

                # Construct a dictionary containing the graph data
                graph_data_dict1 = {'labels': labels1, 'counts': counts1}

                # Return the graph data as JSON
                return jsonify(graph_data_dict1)
        except mysql.connector.Error as err:
            print(f"Error: {err}")
            return jsonify({'error': 'Failed to fetch graph data from the database.'})
    else:
        return jsonify({'error': 'User not logged in.'})


if __name__ == '__main__':
    app.run(debug=True)
