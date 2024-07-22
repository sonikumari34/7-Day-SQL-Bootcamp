-- Show all databases on the server
SHOW DATABASES;

-- Create a new database named 'techforallwithpriya' if it does not already exist
CREATE DATABASE IF NOT EXISTS techforallwithpriya;

-- Switch to the 'techforallwithpriya' database
USE techforallwithpriya;

-- Confirm the current database in use
SELECT DATABASE();

-- Create a table named 'employee' with specified columns
CREATE TABLE employee (
    EID        INT AUTO_INCREMENT, -- Unique identifier for each employee, automatically incremented
    FirstName  VARCHAR(50) NOT NULL, -- Employee's first name, cannot be NULL
    LastName   VARCHAR(50) NOT NULL, -- Employee's last name, cannot be NULL
    Age        INT NOT NULL, -- Employee's age, cannot be NULL
    Salary     INT NOT NULL, -- Employee's salary, cannot be NULL
    Location   VARCHAR(50) NOT NULL, -- Employee's location, cannot be NULL
    PRIMARY KEY (EID) -- Define 'EID' as the primary key for the table
);

-- Show all tables in the current database
SHOW TABLES;

-- Describe the structure of the 'employee' table
DESC employee;
DROP TABLE employee;

-- Insert multiple records into the 'employee' table
INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('Anshu', 'kumari', 15, 400, 'delhi');

INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('Kajal', 'kumari', 16, 54679, 'mumbai');

INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('vishal', 'kumar', 18, 54675, 'delhi');

INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('anita', 'kumari', 19, 5000, 'ara');

INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('prince', 'yadav', 19, 80000, 'benguluru');

INSERT INTO employee (FirstName, LastName, Age, Salary, Location)
VALUES ('prtima', 'kumari', 17, 9000, 'patna');

-- Show all records from the 'employee' table
SELECT * FROM employee; -- Displays all rows and columns from the 'employee' table

-- Retrieve details of employees with a salary greater than 9000
SELECT * FROM employee WHERE salary > 9000;

-- Select and display only the 'FirstName' attribute of all employees
SELECT FirstName FROM employee;

-- Retrieve records of employees whose age is greater than 18
SELECT * FROM employee WHERE Age > 18;

-- Update the last name of the employee with EID = 1 to 'singh'
UPDATE employee SET LastName = 'singh' 
WHERE EID = 1;

-- Show the updated records
SELECT * FROM employee;

-- Attempt to update the last name of employees with the first name 'soni' to 'Bhatt'
-- This may affect multiple records if 'soni' appears more than once
UPDATE employee SET LastName = 'Bhatt'
WHERE FirstName = 'soni';

-- Delete the record of the employee with EID = 6
DELETE FROM employee
WHERE EID = 6;

-- Show all records after deletion
SELECT * FROM employee;
COMMIT;


