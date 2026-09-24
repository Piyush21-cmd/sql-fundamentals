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



-- Q1
SELECT department ,
MAX(salary) - MIN(salary) AS gap_salary 
FROM Employees
GROUP BY department
ORDER BY gap_salary DESC ;
-- OUTPUT 
/*
| department  | gap_salary |
+-------------+------------+
| Finance     |     122000 |
| Engineering |      95000 |
| Sales       |      44000 |
| Marketing   |      42000 |
| NULL        |      19000 |
*/

-- Q1 FACT CHECK
SELECT department , 
      MAX(salary) AS max_salary ,
      MIN(salary) AS min_salary ,
      MAX(salary) - MIN(salary) AS gap_salary 
FROM Employees
GROUP BY department
ORDER BY gap_salary DESC ; 
-- Now i understand 
-- THE LAST TIME I CONFUSED WITH WORDING , AND THATS THE LOGIC WENT WRONG 

   

-- Q2
SELECT city , COUNT(*) AS total_emp 
FROM Employees
WHERE age < 30
GROUP BY city
HAVING COUNT(*)>= 6; 
-- NO OUTPUT WHERE THERE 


-- Q2 FACT CHECK
SELECT city , COUNT(*) AS total_emp 
FROM Employees
WHERE age < 30
GROUP BY city ; 




-- Q3
SELECT department , COUNT(*) AS total_emp 
FROM Employees
WHERE department IS NOT NULL
GROUP BY department 
ORDER BY total_emp  DESC
LIMIT 1; 
-- IM NOT SURE BUT THE QUESTION SAID HIGHESH HEADCOUNT SO I SET LIMIT 1 
-- OUTPUT 
/*
+-------------+-----------+
| department  | total_emp |
+-------------+-----------+
| Engineering |        15 |
+-------------+-----------+
*/

-- Q3 FACT CHECK
SELECT department , COUNT(*) AS total_emp 
FROM Employees
WHERE department IS NOT NULL
GROUP BY department 
ORDER BY total_emp  DESC;




-- Q4 
SELECT department , SUM(salary) AS total_salary
FROM Employees
WHERE department <> 'Sales' 
GROUP BY department
HAVING SUM(salary) > 600000 ; 
-- OUTPUT 
/*
+-------------+--------------+
| department  | total_salary |
+-------------+--------------+
| Engineering |      1805000 |
| Finance     |      1625000 |
*/

-- Q4 FACT CHECK 
SELECT department , SUM(salary) AS total_salary
FROM Employees
WHERE department <> 'Sales' 
GROUP BY department ; 
-- YAAA , THIS QURRY SKIPS THE Sales department



-- Q5
SELECT department , 
      MAX(salary) - MIN(salary) AS gap_salary , 
      AVG(experience_years) AS avg_exp
FROM Employees
GROUP BY department
HAVING MAX(salary) - MIN(salary) > 80000 
AND AVG(experience_years) > 5;
-- DID YOU MENTION , HOW MANY COLUMN SHALL I DISPLAY , 2 OR 3 ?
-- OUTPUT 
/* 
| department  | gap_salary | avg_exp |
+-------------+------------+---------+
| Engineering |      95000 |  9.2000 |
| Finance     |     122000 | 16.8000 |
*/


-- Q6
SELECT city , 
      COUNT(*) AS total_emp , 
      AVG(salary) AS avg_salary
FROM Employees
WHERE salary >= 60000
GROUP BY city 
HAVING COUNT(*) >= 3 
ORDER BY avg_salary DESC 
LIMIT 3 ; 

-- OUTPUT 
/* Bangalore |         7 | 137571.4286 |
| Mumbai    |         6 | 130333.3333 |
| Ahmedabad |         3 | 127333.3333 |
*/
