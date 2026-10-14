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



CREATE TABLE Staff (
    staff_id INT,
    staff_name VARCHAR(50),
    manager_id INT
);

INSERT INTO Staff VALUES
(1, 'Arjun Rao', NULL),
(2, 'Anjali Desai', 1),
(3, 'Priya Nair', 1),
(4, 'Rahul Sharma', 2),
(5, 'Rohit Verma', 2),
(6, 'Isha Patel', 3),
(7, 'Simran Kaur', 3);



-- Q1
SELECT p.project_name , d.dept_name , 
  CASE 
      WHEN d.budget >= 2000000 THEN 'Big Budget' 
      ELSE 'Small Budget'
    END AS 'Budget'
FROM Projects p 
JOIN Departments d 
ON p.dept_id = d.dept_id 
;


-- Q2
SELECT e.staff_name , 
    CASE 
      WHEN e.manager_id IS NULL THEN 'Top Boss'
    ELSE m.staff_name
  END AS managers_name 
FROM Staff e 
JOIN Staff m 
ON e.manager_id = m.staff_id;
-- THIS ONE WONT PRINT THE NULL value with its co related one 

SELECT e.staff_name , 
    CASE 
      WHEN e.manager_id IS NULL THEN 'No Boss'
    ELSE m.staff_name
  END AS managers_name 
FROM Staff e 
LEFT JOIN Staff m 
ON e.manager_id = m.staff_id;
-- but this prints the null with case clause , by Adding the left , but i know that , i dont need specific join to get , i need a join that joins the whole table 


-- Q3 
SELECT d.dept_name , 
  COUNT(p.status) AS completed_projects
FROM Departments d 
JOIN Projects p 
ON d.dept_id = p.dept_id 
WHERE p.status = 'Completed'
GROUP BY d.dept_name 
HAVING COUNT(p.status) >= 1;

-- Q3 FACT CHECK
SELECT status , COUNT(*) FROM Projects 
GROUP by status;


-- Q4 
SELECT dept_name , 'Departments' AS Departments 
FROM Departments 
UNION ALL 
SELECT project_name , 'Projects' AS Projects
FROM Projects;


-- Q5 
SELECT p1.name , p2.name , p1.city 
FROM Employees p1 
INNER JOIN Employees p2 
ON p1.emp_id > p2.emp_id
AND p1.city = p2.city 
WHERE p1.salary >= 100000 
AND p2.salary >= 100000 ; 

-- Q6 
SELECT m.staff_name AS manager,
       ROUND(AVG(emp.salary)) AS avg_report_salary,
       COUNT(*) AS total_reports
FROM Staff e
JOIN Staff m ON e.manager_id = m.staff_id
JOIN Employees emp ON e.staff_name = emp.name
GROUP BY m.staff_name
HAVING COUNT(*) >= 2;



-- q7 
SELECT d.dept_name,
       COUNT(DISTINCT e.emp_id) AS total_emp,
       COUNT(DISTINCT CASE WHEN p.status = 'Completed' THEN p.project_id END) AS completed_projects
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id
LEFT JOIN Projects p ON d.dept_id = p.dept_id
GROUP BY d.dept_name;



-- Q8 
SELECT e.name
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- q9 
SELECT city , COUNT(*) AS total_emp ,
  CASE 
    WHEN COUNT(*) >= 6 THEN 'Big Team' 
  ELSE 'Small Team'
END AS team_size 
  FROM Employees 
  GROUP BY city ;
-- THATS completly accurate output

-- Q10
SELECT d.dept_name ,
 COUNT(DISTINCT e.emp_id) AS total_emp,
       ROUND(AVG(e.salary)) AS avg_salary,
       CASE WHEN ROUND(AVG(e.salary)) >= 100000 THEN 'Well Paid' ELSE 'Standard' END AS salary_status
FROM Departments d
JOIN Employees e ON d.dept_id = e.dept_id
JOIN Projects p ON d.dept_id = p.dept_id
WHERE p.status = 'Active'
GROUP BY d.dept_name;

