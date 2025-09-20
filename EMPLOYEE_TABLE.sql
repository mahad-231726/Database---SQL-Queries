-- Create Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,           -- Unique ID for each employee
    FirstName VARCHAR(20),           -- Employee's first name
    LastName VARCHAR(20),            -- Employee's last name
    JobTitle VARCHAR(30),            -- Job designation
    Age INT,                         -- Employee's age
    Salary DECIMAL(10,2),            -- Monthly salary
    City VARCHAR(20)                 -- City of residence
);

-- Insert 10 Employees
INSERT INTO Employee (EmpID, FirstName, LastName, JobTitle, Age, Salary, City) VALUES
(1, 'Ali', 'Raza', 'Manager', 35, 75000.00, 'Lahore'),
(2, 'Sara', 'Khan', 'Accountant', 29, 55000.00, 'Karachi'),
(3, 'Bilal', 'Ahmed', 'Software Engineer', 27, 80000.00, 'Islamabad'),
(4, 'Hina', 'Malik', 'HR Officer', 31, 60000.00, 'Faisalabad'),
(5, 'Usman', 'Sheikh', 'Sales Executive', 26, 45000.00, 'Multan'),
(6, 'Ayesha', 'Iqbal', 'Marketing Manager', 34, 70000.00, 'Rawalpindi'),
(7, 'Danish', 'Shah', 'Technician', 28, 40000.00, 'Peshawar'),
(8, 'Fatima', 'Hussain', 'Receptionist', 24, 30000.00, 'Sialkot'),
(9, 'Imran', 'Akhtar', 'Project Lead', 36, 90000.00, 'Gujranwala'),
(10, 'Mariam', 'Zafar', 'Assistant', 23, 28000.00, 'Hyderabad');

-- Show all Employees
SELECT * FROM Employee;

-- Find Employees with Salary above 60,000
SELECT * FROM Employee WHERE Salary > 60000;

-- Show Employees from Karachi
SELECT * FROM Employee WHERE City = 'Karachi';

-- Update Employee Salary
UPDATE Employee SET Salary = 95000.00 WHERE EmpID = 3;

-- Delete an Employee
DELETE FROM Employee WHERE EmpID = 10;

-- Order Employees by Age
SELECT * FROM Employee ORDER BY Age;

-- Count Total Employees
SELECT COUNT(*) AS TotalEmployees FROM Employee;