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


-- Q1
SELECT * FROM Departments;
-- IT EXECUTED 
/*
+---------+-------------+------------+---------+
| dept_id | dept_name   | location   | budget  |
+---------+-------------+------------+---------+
|       1 | Engineering | Building A | 5000000 |
|       2 | Sales       | Building B | 1500000 |
|       3 | Marketing   | Building B | 2000000 |
|       4 | Finance     | Building C | 3000000 |
+---------+-------------+------------+---------+*/


-- Q2 
SELECT e.name , e.department , d.location  
FROM Employees AS e
INNER JOIN Departments AS d
ON e.dept_id = d.dept_id;
/*
+----------------+-------------+------------+
| name           | department  | location   |
+----------------+-------------+------------+
| Rahul Sharma   | Engineering | Building A |
| Priya Nair     | Engineering | Building A |
| Aman Gupta     | Sales       | Building B |
| Sneha Reddy    | Marketing   | Building B |
| Rohit Verma    | Engineering | Building A |
| Neha Singh     | Finance     | Building C |
| Vikas Kumar    | Sales       | Building B |
| Anjali Desai   | Engineering | Building A |
| Karan Mehta    | Marketing   | Building B |
| Pooja Iyer     | Finance     | Building C |
| Arjun Rao      | Engineering | Building A |
| Sahil Khan     | Sales       | Building B |
| Kavya Menon    | Marketing   | Building B |
| Mohit Jain     | Finance     | Building C |
| Isha Patel     | Engineering | Building A |
| Nikhil Bose    | Sales       | Building B |
| Simran Kaur    | Engineering | Building A |
| Aditya Joshi   | Finance     | Building C |
| Tanya Malhotra | Marketing   | Building B |
| Deepak Yadav   | Engineering | Building A |
| Rajesh Nambiar | Finance     | Building C |
| Shruti Agarwal | Marketing   | Building B |
| Varun Chopra   | Engineering | Building A |
| Ananya Ghosh   | Sales       | Building B |
| Harsh Vardhan  | Finance     | Building C |
| Divya Krishnan | Engineering | Building A |
| Siddharth Roy  | Marketing   | Building B |
| Nisha Bhatt    | Finance     | Building C |
| Manish Tiwari  | Sales       | Building B |
| Preeti Saxena  | Engineering | Building A |
| Gaurav Sinha   | Marketing   | Building B |
| Ritika Shah    | Engineering | Building A |
| Swati Dubey    | Finance     | Building C |
| Tarun Bajaj    | Sales       | Building B |
| Lakshmi Iyer   | Engineering | Building A |
| Vivek Anand    | Marketing   | Building B |
| Sonal Mehra    | Finance     | Building C |
| Kunal Shetty   | Engineering | Building A |
| Rekha Pandey   | Sales       | Building B |
| Amit Trivedi   | Engineering | Building A |
| Jyoti Rawat    | Marketing   | Building B |
| Suresh Babu    | Finance     | Building C |
+----------------+-------------+------------+*/


-- Q3
SELECT e.name , e.department , d.location 
FROM Employees AS e
LEFT JOIN Departments AS d 
ON d.dept_id = e.dept_id;
/*
+----------------+-------------+------------+
| name           | department  | location   |
+----------------+-------------+------------+
| Rahul Sharma   | Engineering | Building A |
| Priya Nair     | Engineering | Building A |
| Aman Gupta     | Sales       | Building B |
| Sneha Reddy    | Marketing   | Building B |
| Rohit Verma    | Engineering | Building A |
| Neha Singh     | Finance     | Building C |
| Vikas Kumar    | Sales       | Building B |
| Anjali Desai   | Engineering | Building A |
| Karan Mehta    | Marketing   | Building B |
| Pooja Iyer     | Finance     | Building C |
| Arjun Rao      | Engineering | Building A |
| Riya Kapoor    | NULL        | NULL       |
| Sahil Khan     | Sales       | Building B |
| Kavya Menon    | Marketing   | Building B |
| Mohit Jain     | Finance     | Building C |
| Isha Patel     | Engineering | Building A |
| Nikhil Bose    | Sales       | Building B |
| Simran Kaur    | Engineering | Building A |
| Aditya Joshi   | Finance     | Building C |
| Tanya Malhotra | Marketing   | Building B |
| Deepak Yadav   | Engineering | Building A |
| Meera Pillai   | NULL        | NULL       |
| Rajesh Nambiar | Finance     | Building C |
| Shruti Agarwal | Marketing   | Building B |
| Varun Chopra   | Engineering | Building A |
| Ananya Ghosh   | Sales       | Building B |
| Harsh Vardhan  | Finance     | Building C |
| Divya Krishnan | Engineering | Building A |
| Siddharth Roy  | Marketing   | Building B |
| Nisha Bhatt    | Finance     | Building C |
| Manish Tiwari  | Sales       | Building B |
| Preeti Saxena  | Engineering | Building A |
| Gaurav Sinha   | Marketing   | Building B |
| Ritika Shah    | Engineering | Building A |
| Akash Mishra   | NULL        | NULL       |
| Swati Dubey    | Finance     | Building C |
| Tarun Bajaj    | Sales       | Building B |
| Lakshmi Iyer   | Engineering | Building A |
| Vivek Anand    | Marketing   | Building B |
| Sonal Mehra    | Finance     | Building C |
| Kunal Shetty   | Engineering | Building A |
| Rekha Pandey   | Sales       | Building B |
| Amit Trivedi   | Engineering | Building A |
| Jyoti Rawat    | Marketing   | Building B |
| Suresh Babu    | Finance     | Building C |
+----------------+-------------+------------+
*/

-- Q4
SELECT COUNT(*) AS inner_join_total_count
FROM Employees AS e 
INNER JOIN Departments AS d
ON e.dept_id = d.dept_id; 
-- 42

SELECT COUNT(*) AS left_join_total_count
FROM Employees AS e 
LEFT JOIN Departments AS d
ON e.dept_id = d.dept_id;
-- 45 



-- Q5
SELECT e.name , e.salary , d.budget
FROM Employees AS e
INNER JOIN Departments AS d
ON e.dept_id = d.dept_id
WHERE e.salary > 100000;
/*
+----------------+--------+---------+
| name           | salary | budget  |
+----------------+--------+---------+
| Priya Nair     | 125000 | 5000000 |
| Neha Singh     | 150000 | 3000000 |
| Anjali Desai   | 135000 | 5000000 |
| Arjun Rao      | 180000 | 5000000 |
| Mohit Jain     | 142000 | 3000000 |
| Simran Kaur    | 128000 | 5000000 |
| Aditya Joshi   | 165000 | 3000000 |
| Deepak Yadav   | 105000 | 5000000 |
| Rajesh Nambiar | 195000 | 3000000 |
| Varun Chopra   | 112000 | 5000000 |
| Harsh Vardhan  | 155000 | 3000000 |
| Nisha Bhatt    | 172000 | 3000000 |
| Preeti Saxena  | 138000 | 5000000 |
| Ritika Shah    | 118000 | 5000000 |
| Swati Dubey    | 160000 | 3000000 |
| Lakshmi Iyer   | 130000 | 5000000 |
| Sonal Mehra    | 188000 | 3000000 |
| Amit Trivedi   | 175000 | 5000000 |
| Suresh Babu    | 210000 | 3000000 |
+----------------+--------+---------+*/
 
