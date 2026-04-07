SELECT * FROM employee2;

--ARTHEMATIC OPERATORS USES :
	-- calculate bonus 
	SELECT first_name, salary,(salary*0.10) as Bonus FROM employee2;
	
	--calculate new salary
	SELECT first_name,last_name,salary,
		(salary*12) as annual_salary,
		(salary*0.05) as increment_salary,
		(salary+ salary*0.05) as new_salary,
		(salary*1.05) as new_salary2 FROM employee2;
-- COMPARISONS OPERATORS
	--matches age 30
	SELECT * FROM employee2 WHERE age=30;
	-- other than age 30
	SELECT first_name,age FROM employee2 WHERE age!=30;
	-- salary greater than 50000
	SELECT * FROM employee2 
	WHERE salary>50000;
	-- salary smaller than 50000
	SELECT * FROM employee2 
	WHERE salary<=50000;
-- LOGICAL OPERATORS:
	-- employee have salary greater than 5000 and older than 40years
	SELECT * FROM employee2
	WHERE age>40 and salary>=50000;
	-- employee have salary greater than 50000 or older older than 40years
	SELECT * FROM employee2
	WHERE age>40 OR salary>=50000;
	-- employee not belons to IT department
	SELECT * FROM employee2
	WHERE NOT (department='IT');

-- BEETWEEN , LIKE and IN OPERATOR:
	-- employees have salary between 40000 and 60000
	SELECT first_name , last_name,salary FROM employee2
	WHERE salary BETWEEN 40000 AND 60000;
	-- employee have email consist "@gmail.com"
	SELECT first_name , last_name,email FROM employee2
	WHERE email LIKE '%@gmail.com';
	-- employee name first letter is 'J'
	SELECT first_name , last_name,email FROM employee2
	WHERE first_name LIKE 'J%';
	-- employee have department 'IT' and 'Finance'
	SELECT first_name , last_name,department FROM employee2
	WHERE department IN ('Finance','IT');
-- IS NULL , DISTINCT ,ORDER BY and LIMIT OPERATOR:
	-- check null in email
	SELECT first_name , last_name,email FROM employee2
	WHERE email IS NULL;
	-- ORDER THE TABLE BY SALARY IN DESCENDING ORDER
	SELECT * FROM employee2
	ORDER BY salary DESC;
	-- first 5 employees
	SELECT * FROM employee2
	LIMIT 5;
	-- first 5 highest salary employee
	SELECT * FROM employee2
	ORDER BY salary DESC
	LIMIT 5;
	-- LIST OF DISTINCT DEPARTMENT
	SELECT DISTINCT department FROM employee2;
	-- count OF DISTINCT DEPARTMENT
	SELECT COUNT (DISTINCT department) FROM employee2;