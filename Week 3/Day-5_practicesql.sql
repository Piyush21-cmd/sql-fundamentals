USE org ;

SELECT * FROM departments;
SELECT * FROM Projects;
select * FROM Employees;
select * from Staff;

-- Q1
SELECT 
	e.name ,
    d.dept_name, 
	CASE 
		WHEN d.budget >= 3000000 THEN 'High' 
        ELSE 'Low'
	END AS 'budget_level'
FROM 
	Employees e
JOIN
	Departments d
ON d.dept_id = e.dept_id ; 
-- DUE TO LACT OF DATA IN DEPARTMENT AND DEPT_ID , IT TOOK MUCH TIME TO SOVLE , by the way i assist from the ai for i just confuse in the question 

-- Q2
SELECT e.staff_name ,
    CASE 
		WHEN m.staff_name IS NULL THEN 'No Manager'
		ELSE m.staff_name
	END AS manager_name
FROM Staff e
LEFT JOIN Staff m
ON e.manager_id = m.staff_id ;
-- IN THIS QUERY , i get assist from ai for i place m.staff_name to place it in e.staff_name



-- Q3
SELECT d.dept_name , 
    COUNT(p.status) AS active_projects
FROM Departments d 
JOIN Projects p 
ON d.dept_id = p.dept_id
WHERE p.status = 'Active'
GROUP BY d.dept_name
HAVING COUNT(p.status) > 2;

-- Q3 FACT CHECK
SELECT d.dept_name , 
    COUNT(p.status) AS active_projects
FROM Departments d 
JOIN Projects p 
ON d.dept_id = p.dept_id
GROUP BY d.dept_name;


-- Q4 
SELECT p1.name AS first_person , 
	p2.name AS second_person , 
    p1.department ,
  CASE 
    WHEN p1.experience_years >= 10 THEN 'Senior' 
    WHEN P1.experience_years >= 5 THEN 'Med'
    ELSE 'Junior'
  END AS exp_level 
FROM Employees p1 
JOIN Employees p2
  ON p1.department = p2.department AND p1.emp_id < p2.emp_id
WHERE (CASE WHEN p1.experience_years >= 10 THEN 'Senior'
            WHEN p1.experience_years >= 5 THEN 'Mid' ELSE 'Junior' END)
    = (CASE WHEN p2.experience_years >= 10 THEN 'Senior'
            WHEN p2.experience_years >= 5 THEN 'Mid' ELSE 'Junior' END);
; -- why this too much headech

-- Q5
SELECT DISTINCT d.dept_name  , 'Departments' AS Source 
FROM Departments d 
UNION ALL 
SELECT DISTINCT e.department , 'Employees' AS Source 
FROM Employees e;
-- got some help with ai to undertand , 

-- q6
SELECT m.staff_name , SUM(emp.salary) as total_salary 
FROM Staff e
JOIN Staff m ON e.manager_id = m.staff_id
JOIN EMployees emp on e.staff_name = emp.name 
GROUP BY m.staff_name
ORDER BY SUM(emp.salary) DESC
LIMIT 1;

-- Q7
SELECT d.dept_name ,
	COUNT(DISTINCT e.emp_id) AS total_emp,
	COUNT(DISTINCT CASE WHEN p.status = 'Active' THEN p.project_id END ) AS active_projects
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id  
LEFT JOIN Projects p ON e.dept_id = p.dept_id 
GROUP BY d.dept_name ;
--  FIRSTlly , try or give hint like it need quey like this 
-- COUNT(DISTINCT CASE WHEN p.status = 'Active' THEN p.project_id END ) AS active_projects but i know its my fault 

-- Q8
SELECT m.staff_name
FROM Staff m
LEFT JOIN Staff e ON e.manager_id = m.staff_id
WHERE e.staff_id IS NULL;

-- q9
SELECT p.project_name , d.dept_name ,
	CASE 
		WHEN d.budget > 2500000 THEN 'Over Threshold'
        ELSE 'Under Threshold'
	END AS Budget_check
FROM projects p
RIGHT JOIN Departments d
ON p.dept_id = d.dept_id ; 
-- dont understand the output

-- q10
SELECT department , COUNT(*) AS total_emp ,
	CASE 
		WHEN AVG(experience_years) >= 8 THEN 'Experienced Team'
        ELSE 'Junior Team'
	END AS 'Team Revognition'
FROM Employees 
GROUP BY department ;

SELECT COUNT(*) FROM Employees;    -- 45
SELECT COUNT(*) FROM Departments;  -- 4
SELECT COUNT(*) FROM Projects;     -- 6
SELECT COUNT(*) FROM Staff;        -- 7


CREATE TABLE Employees_clean AS
SELECT DISTINCT * FROM Employees;

DROP TABLE Employees;

RENAME TABLE Employees_clean TO Employees;

SELECT COUNT(*) FROM Employees;  -- should be 45


