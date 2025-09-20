-- Create Database
CREATE DATABASE SchoolDB;

-- Use Database
USE SchoolDB;

-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,       -- Unique ID for each student
    FirstName VARCHAR(20),           -- Student's first name
    LastName VARCHAR(20),            -- Student's last name
    Age INT,                         -- Student's age
    Class VARCHAR(10),               -- Class/Grade
    City VARCHAR(20)                 -- City name
);

-- Insert 10 Students
INSERT INTO Student (StudentID, FirstName, LastName, Age, Class, City) VALUES
(1, 'Ali', 'Khan', 15, '9th', 'Lahore'),
(2, 'Sara', 'Malik', 14, '8th', 'Karachi'),
(3, 'Ahmed', 'Sheikh', 16, '10th', 'Islamabad'),
(4, 'Ayesha', 'Raza', 15, '9th', 'Faisalabad'),
(5, 'Bilal', 'Hussain', 17, '11th', 'Multan'),
(6, 'Hina', 'Shah', 14, '8th', 'Peshawar'),
(7, 'Usman', 'Ali', 18, '12th', 'Rawalpindi'),
(8, 'Fatima', 'Iqbal', 15, '9th', 'Gujranwala'),
(9, 'Danish', 'Akhtar', 16, '10th', 'Sialkot'),
(10, 'Mariam', 'Zafar', 17, '11th', 'Hyderabad');

-- Show All Students
SELECT * FROM Student;

-- Show Students from Class 9th
SELECT * FROM Student WHERE Class = '9th';

-- Show Students who live in Lahore
SELECT * FROM Student WHERE City = 'Lahore';

-- Update a Student's City
UPDATE Student SET City = 'Quetta' WHERE StudentID = 5;

-- Delete a Student
DELETE FROM Student WHERE StudentID = 10;

-- Order Students by Age
SELECT * FROM Student ORDER BY Age;

-- Count Total Students
SELECT COUNT(*) AS TotalStudents FROM Student;