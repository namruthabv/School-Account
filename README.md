# School-Account
School Account is a Web Application used by parents for making online payments and includes features like email confirmation, database 
connection and dynamic addition of students information for each parent.

This Website features the attractive login page with form validation(required field, regular expression validator and 
compare field validation) and login page have redirections for:
1. For Parents:
  1. Creating Account - With email confirmation and prompting already existing Users to Login Page(Implemented with AutoPushBack feature).
  2. Login :
    1. For Already existing user.
    2. Recovery Password feature based on Existing user's email address.
    3. Redirection for "Account creation page" if User is not found in the database.
  3. Frequently Asked Question Web Page (PDF Page with more information is integrated with this webpage).
  4. Support - Redirection for "Contact Page" and also Field validation and appropriate alert message with redirection is implemented.
2. What to do - For provinding more information about website (PDF Page with more information is integrated with this webpage).
3. Blog - Links to already existing webpage on internet.

Additional Features for Website - SchoolAccount :

- Logged Users have access to add Students 
- Student and Parents are related with email address of Parent. (Parent and Student have "1 : n" relation).
- Dynamically students can be added and existing students are listed under logged User(Parent) [Implemented using List, Aplication and
session state concept]
- Adrotator is implemented to enchance the look and feel of website.

