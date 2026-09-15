-- New table with extra columns 

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
SELECT DISTINCT department
FROM Employees;
-- IT SHOW NULL AS VALUES THAT EXISTED IN THE TABLE 

-- Q2
SELECT name, city, salary
FROM Employees
WHERE salary > 100000 
ORDER BY salary DESC ;

-- Q3
SELECT name, experience_years, department 
FROM Employees
ORDER BY experience_years DESC
LIMIT 5 ;

-- Q4
SELECT * 
FROM Employees
WHERE city IN ('Pune', 'Mumbai', 'Delhi')
AND department = 'Engineering' ; 

-- Q5
SELECT * 
FROM Employees
WHERE department IS NULL ; 
-- BY DOING department = NULL , ITS SHOWS THE DATA 

-- Q6
SELECT * 
FROM Employees
WHERE department IS NOT NULL  
AND age BETWEEN 25 AND 35 ;
-- WELL I FACED WITH ERROR WITH ERROR 1064 WHCIH OCCURE DUE TO I USED THIS QUERY , AND age BETWEEN (25 AND 35 );

-- Q7
SELECT name, salary
FROM Employees
WHERE department = 'Sales'
ORDER BY salary ASC
LIMIT 3;
-- I TRIED WITH SELECT name, salary , department FOR ME TO RECOGNIZE THAT IS ACTUALLY FROM Sales OR NOT 

-- Q8
SELECT name , department , salary 
FROM Employees
WHERE (department <> 'Finance'
OR department IS NULL)
AND salary BETWEEN 60000 AND 100000 ;
-- IN THIS QUERY I DECIDED WHICH COLUMN TO REPRESENT 

-- Q9
SELECT DISTINCT city , department 
FROM Employees ; 
-- THIS QUERY IS FROM THE DAY 5 , BUT YOU DAID DISTINCT BUT THIS QUERY GOT MULTIPLE REPITED DATA AMONG THEM , WHY ? EXPLAIN SHORTLY 

-- Q10
SELECT name , department , experience_years , salary 
FROM Employees
WHERE department = 'Finance' 
OR experience_years > 15 
ORDER BY salary DESC ; 

-- Q11
SELECT name, age, salary 
FROM Employees
WHERE age < 30 
AND experience_years < 5 
ORDER BY salary DESC 
LIMIT 5; 

-- Q12 
SELECT * 
FROM Employees
WHERE city <> 'Bangalore'
AND department <> 'Finance'
AND experience_years >= 5 
ORDER BY salary DESC
LIMIT 3 ;