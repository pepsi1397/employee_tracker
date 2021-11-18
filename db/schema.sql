DROP DATABASE IF EXISTS employueeTrackerDB;

CREATE DATABASE employueeTrackerDB;

USE employueeTrackerDB
-- department table
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(30)
);
-- Role table           
CREATE TABLE role (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);
-- Employee table
CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,~
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
)
