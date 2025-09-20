-- 1️⃣ Create Student Table
CREATE TABLE SE_Student (
    StudentID INT PRIMARY KEY,        -- Unique ID
    FirstName VARCHAR(20),            -- First Name
    LastName VARCHAR(20),             -- Last Name
    Age INT,                          -- Age
    Semester VARCHAR(10),             -- Semester (4th, 7th, etc.)
    City VARCHAR(20)                  -- City
);

-- 2️⃣ Insert Sample Students (4th & 7th Semester)
INSERT INTO SE_Student (StudentID, FirstName, LastName, Age, Semester, City) VALUES
(1, 'Ali', 'Khan', 21, '4th', 'Lahore'),
(2, 'Sara', 'Malik', 22, '4th', 'Karachi'),
(3, 'Ahmed', 'Sheikh', 24, '7th', 'Islamabad'),
(4, 'Ayesha', 'Raza', 23, '7th', 'Faisalabad'),
(5, 'Bilal', 'Hussain', 21, '4th', 'Multan');

-- 3️⃣ Value Add (Insert)
-- Add a new 4th semester student
INSERT INTO SE_Student (StudentID, FirstName, LastName, Age, Semester, City)
VALUES (6, 'Fatima', 'Iqbal', 22, '4th', 'Rawalpindi');

-- Add a new 7th semester student
INSERT INTO SE_Student (StudentID, FirstName, LastName, Age, Semester, City)
VALUES (7, 'Usman', 'Ali', 24, '7th', 'Peshawar');

-- 4️⃣ Update Values
-- Update Student City
UPDATE SE_Student SET City = 'Quetta' WHERE StudentID = 2;

-- Update Semester for a student
UPDATE SE_Student SET Semester = '7th' WHERE StudentID = 1;

-- 5️⃣ Delete Values
-- Delete a Student
DELETE FROM SE_Student WHERE StudentID = 5;

-- 6️⃣ Select Queries (Example)
-- Show all Students
SELECT * FROM SE_Student;

-- Show all 4th Semester Students
SELECT * FROM SE_Student WHERE Semester = '4th';

-- Show all 7th Semester Students
SELECT * FROM SE_Student WHERE Semester = '7th';

-- Show Students from Lahore
SELECT * FROM SE_Student WHERE City = 'Lahore';