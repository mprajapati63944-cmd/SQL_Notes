-- create table
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
		
		
SELECT * FROM users2;

-- update 
UPDATE users2 
SET age=25				-- update the table and change mohit's age
WHERE name='mohit khoiya';

-- sorting 
SELECT * FROM users2 ORDER BY user_id ASC;

-- change email
UPDATE users2
SET email='kumar1@gmail.com'
WHERE name='mohit kumar';

-- change using condition like
UPDATE users2
SET age=age+1
WHERE email LIKE ('%@gmail.com');


