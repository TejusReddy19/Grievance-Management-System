Grievance Management System

Overview:

The Grievance Management System is an innovative platform designed to revolutionize customer service by leveraging Natural Language Processing (NLP) and voice input technology. This system automates the traditionally slow and manual process of categorizing user grievances, significantly enhancing the efficiency and responsiveness of customer service.

Key Features:

Automated Grievance Categorization: Swiftly and accurately classify user grievances using advanced NLP algorithms.
Voice Input: Allow users to submit grievances via voice input, improving accessibility and accuracy.
Machine Learning Integration: Employ a LinearSVC model and TF-IDF vectorizer for robust prediction and categorization.
User-Friendly Interface: Intuitive frontend designed with HTML, CSS, and JavaScript.
Backend Support: Python and Flask for handling HTTP requests and integrating machine learning models.
Database Management: MySQL via XAMPP for storing user data and grievances.
Admin and Support Staff Features: Admins and support staff can manage complaints, track resolutions, and handle user management.
Problem Statement
The integration of NLP technology in grievance systems presents a compelling solution for enhancing user feedback and complaint handling. By automating the analysis and categorization of user-generated content, this system reduces manual effort, accelerates resolution times, and provides valuable insights into emerging trends and patterns.

System Design:

User Registration and Complaint Submission: Users can register or submit complaints anonymously.
Database Storage: Complaints are stored in a MySQL database server.
Admin and Support Staff Access: Authorized personnel can log in to view and resolve complaints. Admins can also manage support staff.
Implementation Details
Data Pre-processing: Convert text to lowercase, remove special characters, numbers, punctuation, tokenize, remove stop words, and apply lemmatization.
Model Training: Use a pipeline with TF-IDF vectorizer and LinearSVC classifier, perform hyperparameter tuning with GridSearchCV, and fit the pipeline on the training data.
Prediction and Display: Make predictions on the test set and display results using confusion matrix and classification report.
Technologies Used
Backend: Python, Flask
Frontend: HTML, CSS, JavaScript
Machine Learning: Scikit-learn, Pandas
Database: MySQL (via XAMPP)
Development Environment: Visual Studio Code

Conclusion:

Our project successfully creates a user-friendly platform that simplifies the complaint submission process. By using advanced NLP techniques and voice input, we ensure accurate and swift categorization of complaints. The system is accessible to everyone, including those with disabilities, and includes features for tracking resolved complaints and managing support staff.



how to use:

Extract the folder Dataset 
import the sql file (customer_service) into xampp server by creating a db there.
flask installation and ur deasired ide i prefer vs code. 
In pyscript ,in pridSVC change the model file location properly. 
