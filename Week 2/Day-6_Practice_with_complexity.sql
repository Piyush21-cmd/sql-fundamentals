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
      COUNT(*) AS total_emp ,
      AVG(salary) AS avg_salary
FROM Employees 
GROUP BY department
HAVING avg_salary >= 90000 ;

-- Q1 FACT CHECK
SELECT department ,
      COUNT(*) AS total_emp ,
      AVG(salary) AS avg_salary
FROM Employees 
GROUP BY department;


-- Q2
SELECT city , COUNT(*) AS total_emp
FROM Employees
WHERE age BETWEEN 25 AND 40
GROUP BY city
HAVING COUNT(*) >= 5 ;  

-- Q2 FACT CHECK
SELECT city , COUNT(*) AS total_emp
FROM Employees
WHERE age BETWEEN 25 AND 40
GROUP BY city;


-- Q3
SELECT department , AVG(experience_years) AS low_avg_exp
FROM Employees
WHERE department IS NOT NULL
GROUP BY department 
ORDER BY low_avg_exp ASC 
LIMIT 1 ; 
-- YOU MENTIONED THIS SPECIFICALLY ONLY ONE 
-- OUTPUT  NULL       |      1.6667 , BU YOU SAID department , NOT EMPTY DEP , SO I USE WHERE , now the output is Sales      |      2.8750

-- Q3 FACT CHECK
SELECT department , AVG(experience_years) AS low_avg_exp
FROM Employees
GROUP BY department 
ORDER BY low_avg_exp ASC ;


-- Q4
SELECT city , 
      COUNT(*) AS total_emp ,
      AVG(salary) AS avg_salary
FROM Employees
GROUP BY city
HAVING AVG(salary) > (COUNT(*) * 10000) ;
-- THIS ONE IS THE MOST SCAREIEST ONE 
-- before  ASSIST BY AI I UES THIS HAVING avg_salary > (COUNT(*) * 10000) , AND AFTER THAT I USE IN THE QUERY 

-- Q4 FACT CHECK
SELECT city , 
      COUNT(*) AS total_emp ,
      AVG(salary) AS avg_salary
FROM Employees
GROUP BY city;
-- THE OUTPUT AS SAME AS THE ACTUALL QUESTION. i THINK , 4 * 10000 = 40000 , AND ITS AVERAGE IS KOLAKATA 42000 , MEANS ITS TRUE 


-- Q5 
SELECT department , COUNT(*) AS total_emp
FROM Employees
WHERE salary NOT BETWEEN 50000 AND 100000 
GROUP BY department ;

-- Q5 FACT CHECK
SELECT department , COUNT(*) AS total_emp
FROM Employees 
GROUP BY department ;


-- Q6
SELECT department ,
       SUM(salary) AS total_salary ,
       COUNT(*) AS total_emp 
FROM Employees
WHERE experience_years < 10 
GROUP BY department 
ORDER BY total_salary DESC
LIMIT 2; 
-- I CHECKED IT BY FACT CHECK AND ITS TRUE 



-- Q7
SELECT department , MAX(salary) - MIN(salary) AS salary_gap
FROM Employees
GROUP BY department
HAVING MAX(salary) - MIN(salary) > 100000;  
-- OUTPUT Finance    |     122000 


-- Q8
SELECT city , ROUND(AVG(age) , 1) AS avg_age
FROM Employees
GROUP BY city
HAVING AVG(age) >= 28 ;

-- Q8 FACT CHECK
SELECT city , ROUND(AVG(age) , 1) AS avg_age
FROM Employees
GROUP BY city;



-- Q9
SELECT city , SUM(salary) AS total_salary
FROM Employees
WHERE department NOT IN ('Engineering' , 'Sales')
GROUP BY city
HAVING COUNT(*) >= 3;
-- BRO I USE COUNT(*) THAT WERE NOT IN  SELECT CLAUSE , HOW 



-- Q10
SELECT department 
FROM Employees
GROUP BY department
ORDER BY COUNT(*) DESC 
LIMIT 1; 

-- Q10 FACT CHECK
SELECT department , COUNT(*) AS total_emp
FROM Employees
GROUP BY department
ORDER BY COUNT(*) DESC;




-- Q11
SELECT city , COUNT(*) AS total_emp
FROM Employees
WHERE salary > 80000
GROUP BY city 
HAVING COUNT(*) > 3 ;
-- YOU CHANGGED THE QUESTION HERE WHY 
-- Q11 FACT CHECK
SELECT city , COUNT(*) AS total_emp
FROM Employees
WHERE salary > 80000
GROUP BY city;



-- Q12
SELECT department, (MAX(salary) - MIN(salary)) AS salary_gap
FROM Employees
GROUP BY department
ORDER BY salary_gap DESC
LIMIT 1;
;







