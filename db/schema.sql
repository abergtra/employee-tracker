/*Identify if database already exists and replace it with a new empty one*/
DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
/* Change to new database */
USE employee_db;

/* Create a table for the organization's departments to be stored */
CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

/* Create a table for the organization's available roles to be stored */
CREATE TABLE role (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INTEGER,
    FOREIGN KEY(department_id) REFERENCES department(id) ON DELETE CASCADE
);

/* Create a table for the employees to be stored */
CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id DECIMAL(10, 2) NOT NULL,
    manager_id INTEGER
);