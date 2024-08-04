-- Show all databases
SHOW DATABASES;

-- Use specific database
USE techforallwithpriya;

-- Select all records from learner table
SELECT * FROM learner;

-- Describe the structure of the learner table
DESC learner;

-- Grouping and Aggregation queries
SELECT sourceof_joining, COUNT(*) AS num_ofstudents 
FROM learner 
GROUP BY sourceof_joining;

SELECT sourceof_joining, location, COUNT(*) AS num_ofstudents 
FROM learner 
GROUP BY sourceof_joining, location;

SELECT Selected_course, COUNT(*) AS num_ofstudents 
FROM learner 
GROUP BY Selected_course;

-- Experience Statistics
SELECT sourceof_joining, Year_ofExprience, MAX(year_ofExprience) AS max_exp  
FROM learner 
GROUP BY sourceof_joining, Year_ofExprience 
ORDER BY MAX(Year_ofExprience) DESC;

SELECT sourceof_joining, MAX(year_ofExprience) AS max_exp  
FROM learner 
GROUP BY sourceof_joining 
ORDER BY MAX(year_ofExprience) DESC;

SELECT sourceof_joining, MIN(year_ofExprience) AS min_exp  
FROM learner 
GROUP BY sourceof_joining;

SELECT sourceof_joining, AVG(year_ofExprience) AS avg_exp  
FROM learner 
GROUP BY sourceof_joining;

SELECT sourceof_joining, SUM(year_ofExprience) AS total_exp  
FROM learner 
GROUP BY sourceof_joining;

-- Filtering groups
SELECT sourceof_joining, COUNT(*) AS num_student 
FROM learner 
GROUP BY sourceof_joining  
HAVING num_student > 1;

-- Insert data into learner table
INSERT INTO learner (
    LearnerfirstName, LearnerlastName, LearnerPhone_No, LearnerEmail_id, Learner_Enroll_date, Selected_Course,
    Year_ofExprience, Learner_company, Sourceof_Joining, Batch_Start_Date, Location
) VALUES 
('NIBHA', 'Kumari', '7654123410', 'so@gmail.com', '2024-07-20', 3, 2.0, 'MICROSOFT', 'LINKDIN', '2024-02-29', 'patna'),
('NISHA', 'Sharma', '9876543210', 'sha@gmail.com', '2024-07-19', 1, 1.5, 'GOOGLE', 'LINKDIN', '2024-01-16', 'delhi');

-- Select with conditions
SELECT * FROM course WHERE courseName LIKE "%EXCEL%";
SELECT * FROM course WHERE courseName NOT LIKE "%EXCEL%";
SELECT * FROM learner WHERE year_ofExprience > 1 AND location = "PATNA" AND sourceof_joining = "LINKDIN";
SELECT * FROM learner WHERE year_ofExprience BETWEEN 1 AND 3;
SELECT * FROM learner WHERE year_ofExprience < 4 OR sourceof_joining = "LINKDIN" OR LearnerEmail_id = "sonikumari@gmail.com";

-- Select specific columns
SELECT sourceof_joining FROM learner;
SELECT * FROM learner WHERE year_ofExprience BETWEEN 1 AND 3;

-- Alter table employee
ALTER TABLE employee ADD column jobPosition VARCHAR(40);
DESC employee;
ALTER TABLE employee MODIFY column FirstName VARCHAR(40);
ALTER TABLE employee DROP column jobPosition;

-- Truncate and Delete operations (placeholders for research and understanding)
-- TRUNCATE in SQL
-- DELETE vs TRUNCATE Command in SQL --> Research

-- Advanced Filtering
SELECT * FROM learner WHERE year_ofExprience < 3 OR sourceof_joining = "YouTube" OR location = "Chennai";

-- Course table operations
SELECT * FROM course;
INSERT INTO course (courseID, courseName, courseDuration, courseFee) VALUES (4, "WEB DEVELOPMENT", 9.5, 5000);

-- Creating and updating Course_Update table
CREATE TABLE Course_Update (
    CourseID INT AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL,
    CourseDuration_Months DECIMAL(3,1) NOT NULL,
    CourseFee INT NOT NULL,
    Changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY (CourseID)
);

SELECT * FROM Course_Update;

INSERT INTO Course_Update (CourseName, CourseDuration_Months, CourseFee) VALUES 
("The Complete Excel Mastery Course", 23.52, 1499),
("DSA For Interview Preparation", 2, 4999),
("SQL Bootcamp", 1, 2999),
("Foundations of Machine Learning", 3.5, 4999);

ALTER TABLE Course_Update MODIFY column CourseDuration_Months DECIMAL(4,2) NOT NULL;

-- In sql safe update mode  we can't execute UPDATE AND DELETE statement without  WHERE CLAUSE
UPDATE Course_Update SET CourseFee = 3999;

-- This statement updates the CourseFee to 3999 for the course with CourseID = 3.
UPDATE Course_Update SET CourseFee = 3999 WHERE CourseID = 3;

DROP TABLE Course_Update;
SELECT * FROM Course_Update;
