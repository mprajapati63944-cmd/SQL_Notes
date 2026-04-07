
--import csv 
CREATE TABLE employee2(
	employee_id	VARCHAR(10) PRIMARY KEY,
	first_name	VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(10,2),
	joining_date DATE,	
	age INT
);
SELECT * FROM employee2;

-- import csv 
COPY 
employee2 (employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'C:\Users\mpraj\OneDrive\Desktop\EMPLOYEE.csv'
DELIMITER ','
CSV HEADER ;  