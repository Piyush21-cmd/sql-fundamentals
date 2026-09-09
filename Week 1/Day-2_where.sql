-- I using the existing table from the from select_practice

-- SQL Week 1 - Day 2
-- Topic: WHERE Clause

Use college ;

-- A simple demonstraion of "Where" Clause
SELECT * 
FROM Students
WHERE city = "Nagpur";

-- Q1
SELECT name , city
FROM Students
WHERE city = "Nagpur" ;


-- Q2
SELECT name , marks 
FROM Students
WHERE marks > 80 ;

-- Q3
SELECT name , age 
FROM Students
WHERE age = 22 ;

-- Q4
SELECT name , course
FROM Students
WHERE course = "MCA";

-- Q5
SELECT name , marks
FROM Students 
WHERE marks < 70 ;

-- Q6
SELECT name , city 
FROM Students 
WHERE city <> "Delhi";

-- Q7 
SELECT name , age 
FROM Students
WHERE age >= 21 ;

-- Q8
SELECT name , marks 
FROM Students 
WHERE marks >= 90 ;

-- Q9
SELECT name , city , course 
FROM Students 
WHERE city = "Pune"
AND course = "BCA" ;

-- Q10
SELECT name , course , marks 
FROM Students 
WHERE course = "MCA" 
AND marks > 80 ;

