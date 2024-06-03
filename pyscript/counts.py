import mysql.connector

def get_submit_count():
    try:
        with mysql.connector.connect(host='localhost', user='root', password='', database='customer_service') as mydb, mydb.cursor() as mycursor:
            query = "SELECT COUNT(*) FROM unclassified_problem_category"
            mycursor.execute(query)
            submit_count = mycursor.fetchone()[0]
           
            return submit_count
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return 0

def get_solved_count():
    try:
        with mysql.connector.connect(host='localhost', user='root', password='', database='customer_service') as mydb, mydb.cursor() as mycursor:
            query = "SELECT COUNT(*) FROM solved_cases"
            mycursor.execute(query)
            solved_count = mycursor.fetchone()[0]
            return solved_count
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return 0