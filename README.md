# Price Compare Website

![1](https://github.com/nitish39/priceCompare/assets/21340405/c48d4804-bc4b-44f1-b6b2-00358f1b8e6d)
![2](https://github.com/nitish39/priceCompare/assets/21340405/16b4f2fc-f282-453c-97f0-d2daae9543ca)
![3](https://github.com/nitish39/priceCompare/assets/21340405/47639f73-ed0f-4b61-97a1-9d74d81e3e63)


Price Compare Website is a website that allows users to compare products. It is built using the following technologies:

- Spring Boot
- Thymeleaf
- Spring Security
- Hibernate Validator
- Spring JPA
- MySQL 8
- Bootstrap 5
- Sweet Alert
- FontAwesome
- FSLightbox
- TinyMCE
- JavaScript

The project includes the following modules:

- `login`: This module allows users to log in to the website using their email and password.
- `register`: This module allows users to create a new account on the website.
- `admin-panel`: This module provides an interface for the website administrator to manage users.

## Installation

To install and run this project, you'll need to have [Java](https://www.java.com) and [Maven](https://maven.apache.org) installed on your computer, as well as a MySQL 8 server. Then, follow these steps:

1. Clone or download this repository.
2. Create a new database of name "storewala" on your MySQL server and update the `spring.datasource.url`, `spring.datasource.username`, and `spring.datasource.password` properties in the `src/main/resources/application.properties` file to match your MySQL server configuration.
3. Navigate to the project directory and run `mvn clean install` to build the project or Run as Spring Boot App
4. I have provided the Database file in resources folder import it in your sql server.


Once the application is running, you can access the website at http://localhost:8000, Use the following credentials to log in:

- Email: `admin@compareadda.com`
- Password: `admin`
