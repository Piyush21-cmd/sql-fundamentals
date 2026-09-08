CREATE DATABASE org;
use org;

-- Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    emp_id INT, -- Employee who handled/processed the order
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO DepartmentS (dept_id,dept_name) VALUES
(1,	"Sales"),
(2,"Engineering"),
(3,"Marketing");
SELECT * FROM Departments;

INSERT INTO Employees (emp_id,emp_name,dept_id,salary)VALUES
(101,'Alice',1,60000.00),
(102,'Bob',1,45000.00),
(103,'Charlie',2,80000.00),
(104,'David',2,75000.00),
(105,'Emma',3,50000.00),
(106,'Frank',3,52000.00);

-- Data Insertion
INSERT INTO Orders 
(order_id,emp_id,order_date,total_amount)VALUES
(501,101,'2026-01-10',1200.00),
(502,101,'2026-01-15',800.00),
(503,102,'2026-02-01',350.00),
(504,103,'2026-02-10',500.00),
(505,101,'2026-02-12',500.00),
(506,105,'2026-02-20',400.00);


-- Analytical Query
SELECT e1.emp_id , e1.emp_name , e1.dept_id , e1.salary 
FROM Employees AS e1
WHERE e1.salary > (
	SELECT AVG(e2.salary) 
    from Employees as e2
    WHERE e2.dept_id = e1.dept_id
);
