CREATE TABLE employee(			-- creating table
  emp_id SERIAL PRIMARY KEY,  -- format : name datatype constraints,
  name VARCHAR(100) NOT NULL,
  posiition VARCHAR(50),
  department VARCHAR(50),
  hire_date DATE,
  salary numeric(10,2)
);


insert into employee(name,position,department,hire_date,salary)		--insert the values in table
		VALUES
		('Arjun Mehta', 'Software Engineer', 'Engineering', '2021-03-12', 95000),
		('Sana Khan', 'Product Manager', 'Product', '2019-11-05', 125400),
		('Leo Valdez', 'UI Designer', 'Design', '2022-01-20', 78500),
		('Meera Iyer', 'HR Specialist', 'Human Resources', '2018-06-15', 62000),
		('David Miller', 'DevOps Lead', 'Engineering', '2017-09-30', 142000),
		('Anjali Rao', 'Data Analyst', 'Data Science', '2020-04-22', 88000),
		('Kevin Hart', 'Sales Representative', 'Sales', '2021-08-10', 55600),
		('Priya Sharma', 'Marketing Head', 'Marketing', '2015-12-01', 135000),
		('Rohan Das', 'Backend Developer', 'Engineering', '2023-02-14', 105000),
		('Sarah Jenkins', 'QA Tester', 'Quality Assurance', '2020-10-18', 72000);
ALTER TABLE employee
RENAME COLUMN posiition TO position; --change the name of column
SELECT * FROM employee;		--show the output
TRUNCATE TABLE employee;  --its delete all the data of table but can't reset series if any
TRUNCATE TABLE employee RESTART IDENTITY; --for restart the series of employee id after delete data
