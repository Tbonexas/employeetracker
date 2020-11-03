DROP DATABASE employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

--Department Table
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40)
);

-- Department Table "role"
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Employee Role Table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    manager_id INT,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES manager(id)
);

-- Seeds for department
INSERT INTO department (name) VALUE ("Sales");
INSERT INTO department (name) VALUE ("Engineering");
INSERT INTO department (name) VALUE ("Finance");
INSERT INTO department (name) VALUE ("Legal");

-- Employee Role Seeds
INSERT INTO role (title, salary, department_id) VALUE ("Lead Engineer", 145000, 2);
INSERT INTO role (title, salary, department_id) VALUE ("Legal Team Mananger", 245000, 4);
INSERT INTO role (title, salary, department_id) VALUE ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id) VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id) VALUE ("Salesperson", 75000, 1);
INSERT INTO role (title, salary, department_id) VALUE ("Software Engineer", 135000, 2);
INSERT INTO role (title, salary, department_id) VALUE ("Company Lawyer", 190000, 4);

-- Employee seeds
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Rick", "Sanchez", 1, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Morty", "Smith", 2, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Summer", "Smith", 2, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Beth", "Smith", 2, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Jerry", "Smith", 2, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Elon", "Tusk", 3, 6)
INSERT INTO employee (first_name, last_name, manager_id, role_id) VALUE ("Sleepy", "Gary", 4, 7);

-- Selecting for creating
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;