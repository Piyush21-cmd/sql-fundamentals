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
SELECT department , COUNT(*) AS total_emp
FROM Employees
GROUP BY department
HAVING COUNT(*) > 8 ;

-- Q1 CHECKING
SELECT department , COUNT(*) 
FROM Employees
GROUP BY department;
-- ITS FOR CHECKIG THE Q1 IS WROKED OR IS JUST THE RANDOM OUTPUT


-- Q2
SELECT department , AVG(salary) AS avg_salary
FROM Employees
GROUP BY department
HAVING avg_salary > 100000 ; 

-- Q2 FACT CHECK 
SELECT department , AVG(salary) 
FROM Employees
GROUP BY department;
-- ITS FOR CHECKIG THE Q2 IS WROKED OR IS JUST THE RANDOM OUTPUT



-- Q3 
SELECT city , COUNT(*) AS total_emp
FROM Employees
GROUP BY city
HAVING total_emp > 5 ;

-- Q3 FACT CHECK 
SELECT city , COUNT(*) 
FROM Employees
GROUP BY city;
-- ITS FOR CHECKIG THE Q3 IS WROKED OR IS JUST THE RANDOM OUTPUT



-- Q4
SELECT department , SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING total_salary > 500000 ;  
-- YOU REALLY PLAYED WITH WORDINGS OF THE QUESTION 

-- Q4 FACT CHECK 
SELECT department , SUM(salary) 
FROM Employees
GROUP BY department;



-- Q5
SELECT department , AVG(experience_years) AS avg_exp_8y
FROM Employees
WHERE age < 40 
GROUP BY department
HAVING avg_exp_8y > 8 ;
-- I DONT KNOW WHEATHER ITS ACCURATE OR NOT , ITS UP TO YOU TO CHECK 


-- Q6
SELECT city , AVG(age) AS average_age
FROM Employees 
GROUP BY city
HAVING average_age > 30 
ORDER BY average_age DESC ;


-- Q7
SELECT department , COUNT(*) AS total_emp
FROM Employees
GROUP BY department
HAVING total_emp < 6 ;
-- I FEEL DOUBT IN THIS ONE , BUT STILL THE QUERY SHOW NULL WITH 3 

-- Q8
SELECT department , MIN(salary) AS minimum_salary 
FROM Employees
GROUP BY department
HAVING minimum_salary >= 50000;

-- Q8 FACT CHECK
SELECT department , MIN(salary) AS minimum_salary 
FROM Employees
GROUP BY department ;
-- THIS QUERY MADE ME THING MORE THAN TWICE , SO THATS WHY I FACT CHECK IT 


-- Q9
SELECT department , city , COUNT(*) AS total_emp 
FROM Employees
GROUP BY department , city
HAVING total_emp >= 2;
-- THIS LOOK CURIOUS 


-- Q10
SELECT department , ROUND(AVG(salary)) AS avg_salary 
FROM Employees
WHERE experience_years >= 5 
GROUP BY department
HAVING avg_salary > 90000 
ORDER BY avg_salary DESC;
-- IS THIS EVEN A QUERY TO SOLVE 

