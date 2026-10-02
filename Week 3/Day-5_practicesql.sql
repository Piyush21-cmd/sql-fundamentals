USE org;

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
		WHEN m.staff_name IS NULL THEN 'No'
		ELSE m.staff_name
	END AS manager_name
FROM Staff e
LEFT JOIN Staff m
ON e.manager_id = m.staff_id ;
-- IN THIS QUERY , i get assist from ai for i place m.staff_name to place it in e.staff_name 