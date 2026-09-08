CREATE DATABASE College;
USE College;

CREATE TABLE Students (
	student_id INT , 
    name VARCHAR (50) ,
    age INT ,
    city VARCHAR (50) ,
    course VARCHAR (50) , 
    marks INT 
);

INSERT INTO Students 
(student_id , name , age , city , course , marks)
VALUES
(1, 'Rahul', 21, 'Nagpur', 'MCA', 78),
(2, 'Priya', 22, 'Pune', 'MCA', 85),
(3, 'Aman', 20, 'Mumbai', 'BCA', 67),
(4, 'Sneha', 21, 'Nagpur', 'BCA', 91),
(5, 'Rohit', 23, 'Pune', 'MCA', 73),
(6, 'Neha', 22, 'Delhi', 'MCA', 88),
(7, 'Vikas', 20, 'Mumbai', 'BCA', 56),
(8, 'Anjali', 21, 'Nagpur', 'MCA', 95),
(9, 'Karan', 24, 'Delhi', 'BCA', 62),
(10, 'Pooja', 22, 'Pune', 'MCA', 81),
(11, 'Arjun', 21, 'Mumbai', 'MCA', 74),
(12, 'Riya', 20, 'Delhi', 'BCA', 69),
(13, 'Sahil', 23, 'Nagpur', 'MCA', 59),
(14, 'Kavya', 22, 'Pune', 'BCA', 92),
(15, 'Mohit', 21, 'Mumbai', 'MCA', 83),
(16, 'Isha', 23, 'Delhi', 'MCA', 77),
(17, 'Nikhil', 20, 'Nagpur', 'BCA', 64),
(18, 'Simran', 22, 'Pune', 'MCA', 89),
(19, 'Aditya', 24, 'Mumbai', 'BCA', 71),
(20, 'Tanya', 21, 'Delhi', 'MCA', 96);

-- Q!. Query
SELECT * FROM Students ;

-- Q2
SELECT name , city FROM Students ; 

-- Q3 
SELECT name , course , marks 
FROM Students ; 

-- Q4
SELECT name , age FROM Students ; 

-- Q5
SELECT student_id , name FROM Students ; 

-- Q6 
SELECT name  as Student_Name FROM Students;

-- Q7 
select marks AS Score FROM Students ;

-- Q8
SELECT 
course AS Program ,
marks AS Score 
FROM Students ;

-- Q9
SELECT name , city , 
marks AS Final_Score
FROM Students ;

-- Q10 
SELECT name , 
course AS Course_Name 
FROM Students ;