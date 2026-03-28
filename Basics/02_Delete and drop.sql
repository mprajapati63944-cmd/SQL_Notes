CREATE TABLE employee2(			-- creating table
  emp_id INT PRIMARY KEY,  -- format : name datatype constraints,
  name VARCHAR(100) NOT NULL,
  position VARCHAR(50),
  department VARCHAR(50),
  hire_date DATE,
  salary numeric(10,2)
);


insert into employee2(emp_id,name,position,department,hire_date,salary)		--insert the values in table
		VALUES
		(001,'Arjun Mehta', 'Software Engineer', 'Engineering', '2021-03-12', 95000),
		(002,'Sana Khan', 'Product Manager', 'Product', '2019-11-05', 125400),
		(003,'Leo Valdez', 'UI Designer', 'Design', '2022-01-20', 78500),
		(004,'Meera Iyer', 'HR Specialist', 'Human Resources', '2018-06-15', 62000),
		(005,'David Miller', 'DevOps Lead', 'Engineering', '2017-09-30', 142000),
		(006,'Anjali Rao', 'Data Analyst', 'Data Science', '2020-04-22', 88000),
		(007,'Kevin Hart', 'Sales Representative', 'Sales', '2021-08-10', 55600),
		(008,'Priya Sharma', 'Marketing Head', 'Marketing', '2015-12-01', 135000),
		(009,'Rohan Das', 'Backend Developer', 'Engineering', '2023-02-14', 105000),
		(010,'Sarah Jenkins', 'QA Tester', 'Quality Assurance', '2020-10-18', 72000);
SELECT * FROM employee2;

DELETE FROM employee2
WHERE emp_id=003;		-- delete a row of employee id have 3

ALTER TABLE employee2	-- delete the salary column 
DROP COLUMN salary;

DROP TABLE IF EXISTS employee2; -- delete table if exists else don't give error 
DROP DATABASE IF EXISTS company2; -- delete database if exist else skip
