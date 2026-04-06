CREATE TABLE users2(
	user_id INT PRIMARY KEY,		-- primary key : unique values in table and use to join tables 
	name VARCHAR(50) NOT NULL,		-- not null : values must be fill
	email VARCHAR(100) UNIQUE,		-- unique : values have different from other date
	age INTEGER CHECK(age>=18), 	-- check : enter data as per condition
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 	-- default : if data is blank enter a value
);

--inserting values
INSERT INTO users2(user_id,name,email,age)
		VALUES (001,'mohit khoiya','mohit1@gmail.com',18),
		(002,'neha','neha12@gmail.com',19),		 
		(003,'rohit','rohit1@gmail.com',18),		 
		(004,'mohit kumar','mohit12@gmail.com',20),	 
		(005,'sohan','so631@gmail.com',22); 		
		
		
SELECT * FROM users2 ORDER BY user_id ASC;

-- AlTER TABLE
-- Change Column name
ALTER Table users2
RENAME COLUMN name TO Full_Name;

-- to change age column datan type from int to small int
 ALTER TABLE users2
 ALTER COLUMN age TYPE SMALLINT;

-- to change constraints
ALTER TABLE users2
ALTER COLUMN age SET NOT NULL;
-- to delete constraints 
ALTER TABLE users2
DROP CONSTRAINT age;
-- add constraints
ALTER TABLE users2
ADD CONSTRAINT age CHECK(age>=18);

--rename table
ALTER TABLE users2
RENAME TO 	customers;

		
SELECT * FROM customers ORDER BY user_id ASC;