use college ;


-- Q1
SELECT *
FROM Students 
WHERE city = 'Pune' or city = 'Delhi';

-- Q2
SELECT * 
FROM Students 
WHERE course = 'MCA' AND marks > 80 ;

-- Q3
SELECT * 
FROM Students 
WHERE city in ('Nagpur', 'Pune', 'Mumbai');

-- Q4
SELECT * 
FROM Students 
WHERE city NOT IN ('Delhi');

-- q5
SELECT * 
FROM Students 
WHERE marks BETWEEN 60 AND 80 ; 

-- Q6
SELECT * 
FROM Students  	
WHERE age IN (21 , 22) ;

-- Q7
SELECT * 
FROM Students 
WHERE city = 'PUNE' AND
age BETWEEN 20 AND 22 ; 

-- Q8 
SELECT * 
FROM Students 
WHERE course = 'MCA' OR 
marks > 90 ;

-- Q9
SELECT * 
FROM Students 
WHERE (city = 'DELHI' OR city = 'MUMBAI') AND course = 'BCA' ; 

-- Q10
SELECT * 
FROM Students 
WHERE course <> 'MCA' AND 
city <> 'NAGPUR';