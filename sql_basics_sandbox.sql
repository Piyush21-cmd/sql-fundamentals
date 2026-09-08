-- 1. DATABASE CREATION
CREATE DATABASE Organisation;

-- 2. DATABASE USE 
USE Organisation ;

-- 3. Schema Creation
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(id)
);

-- 4. Data Insertion
INSERT INTO Employee (id, name, manager_id) VALUES
(103, 'casey', NULL),
(104, 'donald', 103),
(101, 'adam', 103),
(102, 'bob', 104);

-- 5. QUERIES

-- FETCH ALL DATA OF EMPLOYEES 
SELECT * FROM Employee;

-- SELF JOIN TO DISPLAY EMPLOYEE-MANAGER RELATIONSHIP
SELECT 
	e1.name as managers_name ,
    e2.name AS employee_name
FROM Employee as e1
JOIN Employee as e2
	on e1.id  = e2.manager_id;

-- UNION ALL TO DISPLAY DUPLICATE DATA
SELECT name FROM Employee 
UNION ALL
SELECT name FROM Employee ;

-- UNION - PREVENT TO DISPLAY DUPLICATE DATA
SELECT name FROM Employee 
UNION
SELECT name FROM Employee ;