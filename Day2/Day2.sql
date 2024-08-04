-- Day 2

-- Show all databases
SHOW DATABASES;

-- Use the database named techforallwithpriya
USE techforallwithpriya;

-- Create a table named department with fields dept_id and department_name
CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Describe the structure of the department table
DESC department;

-- Drop the department table
DROP TABLE department;

-- Insert a record into the department table
INSERT INTO department(dept_id, department_name) VALUES (1, 'BCA');

-- Select all records from the department table
SELECT * FROM department;

-- Create a table named Course with specified fields
CREATE TABLE Course(
    courseID INT AUTO_INCREMENT,
    courseName VARCHAR(50) NOT NULL,
    courseDuration INT NOT NULL,
    courseFee INT NOT NULL,
    PRIMARY KEY(courseId)
);

-- Show all tables in the current database
SHOW TABLES;

-- Describe the structure of the Course table
DESC Course;

-- Insert records into the Course table
INSERT INTO Course(courseID, courseName, courseDuration, courseFee) VALUES (1, 'The Complete Excel Mastery Course', 3, 1499);
INSERT INTO Course(courseName, courseDuration, courseFee) VALUES ('DSA FOR INTERVIEW PREPARATION', 2, 499);
INSERT INTO Course(courseName, courseDuration, courseFee) VALUES ('SQL BOOTCAMP', 1, 2999);

-- Select all records from the Course table
SELECT * FROM Course;

-- Create the Learner table with specified fields
CREATE TABLE Learner(
    Learner_ID INT AUTO_INCREMENT,
    LearnerfirstName VARCHAR(50) NOT NULL,
    LearnerlastName VARCHAR(50) NOT NULL,
    LearnerPhone_No VARCHAR(15) NOT NULL,
    LearnerEmail_id VARCHAR(50) NOT NULL UNIQUE,
    Learner_Enroll_date DATE NOT NULL,
    Selected_Course INT NOT NULL,
    Year_ofExprience DECIMAL(2,1),
    Learner_company VARCHAR(50),
    Sourceof_Joining VARCHAR(50) NOT NULL,
    Batch_Start_Date DATE,
    Location VARCHAR(50),
    PRIMARY KEY(Learner_ID),
    FOREIGN KEY (Selected_Course) REFERENCES Course(courseID)
);

-- Drop the Learner table
DROP TABLE Learner;

-- Describe the structure of the Learner table
DESC Learner;

-- Show all tables in the current database
SHOW TABLES;

-- Insert multiple records into the Learner table
INSERT INTO Learner (LearnerfirstName, LearnerlastName, LearnerPhone_No, LearnerEmail_id, Learner_Enroll_date, Selected_Course, Year_ofExprience, Learner_company, Sourceof_Joining, Batch_Start_Date, Location)
VALUES 
('SONI', 'Kumari', '7654123410', 'sonikumari@gmail.com', '2024-07-20', 3, 2.0, 'MICROSOFT', 'CHAICODE', '2024-02-29', 'patna'),
('Rahul', 'Sharma', '9876543210', 'rahulsharma@gmail.com', '2024-07-19', 1, 1.5, 'GOOGLE', 'REFERRAL', '2024-01-16', 'delhi'),
('Priya', 'Singh', '9123456780', 'priyasingh@gmail.com', '2024-07-18', 2, 3.0, 'FACEBOOK', 'WEBSITE', '2024-03-25', 'mumbai'),
('Amit', 'Kumar', '9876501234', 'amitkumar@gmail.com', '2024-07-17', 3, 4.0, 'AMAZON', 'EMAIL', '2024-07-24', 'bangalore'),
('Neha', 'Verma', '9012345678', 'nehaverma@gmail.com', '2024-07-16', 1, 2.5, 'TESLA', 'SOCIAL_MEDIA', '2024-07-25', 'hyderabad'),
('Rohit', 'Gupta', '8890123456', 'rohitgupta@gmail.com', '2024-07-15', 2, 5.0, 'APPLE', 'AD', '2024-07-26', 'chennai'),
('Anjali', 'Yadav', '7654901234', 'anjaliyadav@gmail.com', '2024-07-14', 3, 0.5, 'SPOTIFY', 'CHAICODE', '2024-07-27', 'kolkata'),
('Vikas', 'Rao', '8901234567', 'vikasrao@gmail.com', '2024-07-13', 1, 1.0, 'NETFLIX', 'WEBSITE', '2024-07-28', 'jaipur');

-- Select all records from the Learner table
SELECT * FROM Learner;

-- Select all records from the Course table
SELECT * FROM Course;

-- Truncate the Learner table
TRUNCATE TABLE Learner;

-- Data Analysis

-- Give the record of the employee getting the highest salary
SELECT * FROM employee ORDER BY salary DESC LIMIT 3;

-- Get the maximum salary from the employee table
SELECT MAX(salary) AS Max_SALARY FROM employee;

-- Get the minimum salary from the employee table
SELECT MIN(salary) AS MIN_SALARY FROM employee;

-- Select all records from the employee table
SELECT * FROM employee;

-- Give the record of the employee getting the highest salary and age is bigger than 17
SELECT * FROM employee WHERE age > 17 ORDER BY salary DESC LIMIT 1;

-- Get the maximum salary for employees older than 17
SELECT MAX(salary) AS Max_SALARY FROM employee WHERE age > 17;

-- Display the number of enrollments in the website of techforallwithpriya
SELECT COUNT(*) AS NO_OF_ENROLLMENT FROM Learner;

-- Display the number of enrollments for Learner_ID=3
SELECT COUNT(Learner_ID) AS NO_OF_ENROLLMENT FROM Learner WHERE Selected_Course = 3;

-- Select all records from the Learner table
SELECT * FROM Learner;

-- Count the number of learners enrolled in the month of January
SELECT COUNT(*) AS Learner_in_jan FROM Learner WHERE Learner_Enroll_Date LIKE '2024-07-%';

-- Count the number of learners enrolled in the month of july 20

SELECT COUNT(*) AS Learner_in_jan FROM Learner WHERE Learner_Enroll_Date LIKE '2024-07-20%';

-- Update Rahul's year of experience to 2 and company name to 'Amazon'
UPDATE Learner SET Year_ofExprience = 2, Learner_company = 'Amazon' WHERE Learner_ID = 2;

-- Select all records from the Learner table
SELECT * FROM Learner;

-- Count the number of companies where learners are currently doing their job
SELECT COUNT(Learner_company) FROM Learner;

-- Count the distinct number of companies where learners are currently doing their job
SELECT COUNT(DISTINCT Learner_company) FROM Learner;

-- Select all records from the Learner table
SELECT * FROM Learner;
COMMIT;

