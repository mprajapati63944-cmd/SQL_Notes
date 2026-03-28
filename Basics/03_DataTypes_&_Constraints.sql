-- create table
CREATE TABLE users(
	user_id INT PRIMARY KEY,		-- primary key : unique values in table and use to join tables 
	name VARCHAR(50) NOT NULL,		-- not null : values must be fill
	email VARCHAR(100) UNIQUE,		-- unique : values have different from other date
	age INTEGER CHECK(age>=18), 	-- check : enter data as per condition
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 	-- default : if data is blank enter a value
);

--inserting values
INSERT INTO users(user_id,name,email,age)
		VALUES (001,'mohit khoiya','mohit1@gmail.com',18), -- insert into table
		(001,'neha','neha12@gmail.com',19),		 --error : user id is same as previous
		(002,' ','mohit1@gmail.com',18),		 -- error : name should not be null
		(003,'mohit kumar','mohit1@gmail.com',20),	 -- error : email should be unique
		(004,'sohan','so631@gmail.com',17); 		-- error : age shoul be greater than or equal to 18
		
		
SELECT * FROM users;