CREATE DATABASE org ; 

USE org;
CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience_years INT
);

INSERT INTO Employees VALUES
(1, 'Rahul Sharma', 28, 'Pune', 'Engineering', 85000, 4),
(2, 'Priya Nair', 34, 'Bangalore', 'Engineering', 125000, 9),
(3, 'Aman Gupta', 25, 'Delhi', 'Sales', 45000, 2),
(4, 'Sneha Reddy', 31, 'Hyderabad', 'Marketing', 72000, 6),
(5, 'Rohit Verma', 29, 'pune', 'Engineering', 95000, 5),
(6, 'Neha Singh', 41, 'Mumbai', 'Finance', 150000, 15),
(7, 'Vikas Kumar', 23, 'Delhi', 'Sales', 38000, 1),
(8, 'Anjali Desai', 36, 'Bangalore', 'Engineering', 135000, 11),
(9, 'Karan Mehta', 27, 'Mumbai', 'Marketing', 68000, 3),
(10, 'Pooja Iyer', 30, 'Chennai', 'Finance', 88000, 6),
(11, 'Arjun Rao', 45, 'Bangalore', 'Engineering', 180000, 20),
(12, 'Riya Kapoor', 24, 'Delhi', NULL, 42000, 1),
(13, 'Sahil Khan', 33, 'Pune', 'Sales', 76000, 8),
(14, 'Kavya Menon', 26, 'Chennai', 'Marketing', 55000, 3),
(15, 'Mohit Jain', 38, 'MUMBAI', 'Finance', 142000, 13),
(16, 'Isha Patel', 29, 'Ahmedabad', 'Engineering', 92000, 5),
(17, 'Nikhil Bose', 22, 'Kolkata', 'Sales', 35000, 0),
(18, 'Simran Kaur', 35, 'Delhi', 'Engineering', 128000, 10),
(19, 'Aditya Joshi', 42, 'Pune', 'Finance', 165000, 17),
(20, 'Tanya Malhotra', 28, 'Bangalore', 'Marketing', 78000, 4),
(21, 'Deepak Yadav', 31, 'Hyderabad', 'Engineering', 105000, 7),
(22, 'Meera Pillai', 27, 'Chennai', NULL, 61000, 3),
(23, 'Rajesh Nambiar', 48, 'Mumbai', 'Finance', 195000, 22),
(24, 'Shruti Agarwal', 25, 'delhi', 'Marketing', 52000, 2),
(25, 'Varun Chopra', 32, 'Pune', 'Engineering', 112000, 8),
(26, 'Ananya Ghosh', 23, 'Kolkata', 'Sales', 39000, 1),
(27, 'Harsh Vardhan', 39, 'Bangalore', 'Finance', 155000, 14),
(28, 'Divya Krishnan', 30, 'Chennai', 'Engineering', 98000, 6),
(29, 'Siddharth Roy', 26, 'Kolkata', 'Marketing', 58000, 3),
(30, 'Nisha Bhatt', 44, 'Ahmedabad', 'Finance', 172000, 19),
(31, 'Manish Tiwari', 21, 'Delhi', 'Sales', 32000, 0),
(32, 'Preeti Saxena', 37, 'Mumbai', 'Engineering', 138000, 12),
(33, 'Gaurav Sinha', 29, 'Pune', 'Marketing', 71000, 5),
(34, 'Ritika Shah', 33, 'Ahmedabad', 'Engineering', 118000, 9),
(35, 'Akash Mishra', 24, 'Hyderabad', NULL, 44000, 1),
(36, 'Swati Dubey', 40, 'Bangalore', 'Finance', 160000, 16),
(37, 'Tarun Bajaj', 28, 'Chennai', 'Sales', 67000, 4),
(38, 'Lakshmi Iyer', 35, 'BANGALORE', 'Engineering', 130000, 10),
(39, 'Vivek Anand', 22, 'Kolkata', 'Marketing', 36000, 0),
(40, 'Sonal Mehra', 46, 'Delhi', 'Finance', 188000, 21),
(41, 'Kunal Shetty', 27, 'Mumbai', 'Engineering', 89000, 4),
(42, 'Rekha Pandey', 31, 'Hyderabad', 'Sales', 74000, 7),
(43, 'Amit Trivedi', 43, 'Pune', 'Engineering', 175000, 18),
(44, 'Jyoti Rawat', 25, 'Ahmedabad', 'Marketing', 49000, 2),
(45, 'Suresh Babu', 50, 'Chennai', 'Finance', 210000, 25);


CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    budget INT
);

INSERT INTO Departments VALUES
(1, 'Engineering', 'Building A', 5000000),
(2, 'Sales', 'Building B', 1500000),
(3, 'Marketing', 'Building B', 2000000),
(4, 'Finance', 'Building C', 3000000);




ALTER TABLE Employees ADD COLUMN dept_id INT;

UPDATE Employees SET dept_id = 1 WHERE department = 'Engineering';
UPDATE Employees SET dept_id = 2 WHERE department = 'Sales';
UPDATE Employees SET dept_id = 3 WHERE department = 'Marketing';
UPDATE Employees SET dept_id = 4 WHERE department = 'Finance';



CREATE TABLE Projects (
    project_id INT,
    project_name VARCHAR(50),
    dept_id INT,
    status VARCHAR(20)
);

INSERT INTO Projects VALUES
(1, 'Website Revamp', 1, 'Active'),
(2, 'Mobile App', 1, 'Active'),
(3, 'Lead Gen Campaign', 2, 'Completed'),
(4, 'Brand Refresh', 3, 'Active'),
(5, 'Q3 Audit', 4, 'Completed'),
(6, 'Cloud Migration', 1, 'Active');


-- Q1: Confirm Projects table
SELECT * FROM Projects;

-- Q2: RIGHT JOIN - all departments, with matching employees
SELECT e.name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

-- Q3: 3-table join - employee, department, project
SELECT e.name, d.dept_name, p.project_name
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id
INNER JOIN Projects p ON d.dept_id = p.dept_id;
-- 72 rows (row multiplication - each employee appears once per department project)

-- Q4: Project count per department
SELECT d.dept_name, COUNT(p.project_id) AS Total_Projects
FROM Departments d
INNER JOIN Projects p
ON d.dept_id = p.dept_id
GROUP BY d.dept_name;

-- Q5: Active projects only
SELECT d.dept_name, p.project_name, p.status
FROM Departments d
INNER JOIN Projects p
ON d.dept_id = p.dept_id
WHERE p.status = 'Active';

-- Q6: Distinct employees connected to at least one project via their department
SELECT COUNT(DISTINCT e.name) AS employees_with_projects
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id
INNER JOIN Projects p ON d.dept_id = p.dept_id;
-- 42