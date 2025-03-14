# Amazon Product Management System
A web-based product management system using Java (JSP, Servlet), MySQL, and Bootstrap. This system allows users to add, update, delete, and view products in an inventory.

## Project Overview
This project is a Dynamic Web Application built using Java EE and MySQL as the database. The application provides a simple interface for managing products, including the ability to:
- Add new products with name, brand, price, and company details.
- View all products in a tabular format.
- Edit product details (update price).
- Delete products from the database.

## Technologies Used

| Technology  | Description |
|------------|------------|
| **Java EE** | Backend logic using JSP and Servlets |
| **MySQL** | Database for storing product details |
| **JDBC** | Connecting Java application to MySQL |
| **JSP (Java Server Pages)** | Creating dynamic web pages |
| **Bootstrap 5** | Responsive UI design |
| **Eclipse IDE** | Development environment |
| **Apache Tomcat** | Web server for running the application |

## Database Schema
Before running the project, create the MySQL database and table using the following SQL script:
    
    CREATE DATABASE amazon;
    USE amazon;
    CREATE TABLE product (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(50),
        brand VARCHAR(50),
        price FLOAT CHECK(price > 0),
        company VARCHAR(30) DEFAULT 'Amazon Corp.'
    );

# Project Setup & Installation
## Step 1: Clone the Repository
git clone https://github.com/YOUR-GITHUB-USERNAME/Amazon-Product-Management.git
cd Amazon-Product-Management
## Step 2: Import Project into Eclipse
- Open Eclipse IDE.
- Click File → Import → Existing Projects into Workspace.
- Select the cloned project folder.
- Click Finish.
## Step 3: Add MySQL JDBC Driver
- Download the MySQL Connector JAR file from here.
- Add it to the lib folder of your project.
- In Eclipse, Right Click on Project → Properties → Java Build Path → Libraries → Add JARs → Select MySQL Connector.
## Step 4: Configure Database Credentials
Edit the DBCode.java file in the amaze package:
    private String url = "jdbc:mysql://localhost:3306/amazon";
    private String user = "root";  // Change to your MySQL username
    private String pass = "yourpassword";  // Change to your MySQL password
## Step 5: Run the Application
- Right-click on the project in Eclipse.
- Select Run As → Run on Server.
- Choose Apache Tomcat Server and click Finish.
- Open your browser and go to:
        http://localhost:8080/AmazonProductManagement/index.jsp

# Project Structure

Amazon-Product-Management/
        │── src/main/java/amaze/
        │   ├── DBCode.java  (Database connection & operations)
        │   ├── Product.java  (Product Model Class)
        │── WebContent/
        │   ├── index.jsp  (Homepage - Add Products)
        │   ├── view.jsp  (View & Delete Products)
        │   ├── edit.jsp  (Update Product Price)
        │── lib/  (MySQL JDBC Connector)
        │── Web.xml  (Servlet Configuration)
        │── pom.xml  (For Maven users)

#  Screenshots
## Homepage (Add Products)

## Product List (View & Delete)

## Edit Product Price

# Features
- Responsive UI with Bootstrap.
- CRUD Operations (Create, Read, Update, Delete).
- Real-time updates on product changes.
- Input validation for secure data handling.

# Future Enhancements
- Add user authentication (login/logout system).
- Implement pagination for large product lists.
- Improve UI with better styling & animations.
- Export product list as CSV/PDF.

#  Contributing
- Fork the repository.
- Create a new branch:
        git checkout -b feature-branch
- Commit your changes:
        git commit -m "Added new feature"
- Push to the branch:
        git push origin feature-branch
- Open a Pull Request!

#  Support
If you like this project, ⭐ star the repository and share it with others!
For issues or suggestions, open a GitHub issue.

#Author
SAMSUDEEN MOHAMMED RIYAZ S
