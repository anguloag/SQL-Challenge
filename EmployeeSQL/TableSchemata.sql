----- CREATING TABLES -----

--Create departments table
CREATE TABLE departments (
	DeptNum VARCHAR(10) PRIMARY KEY,
	DeptName VARCHAR);
--Check imported data
SELECT * FROM departments;

--Create titles table
CREATE TABLE titles (
	TitleID VARCHAR(10) PRIMARY KEY,
	TitleName VARCHAR);
--Check imported data
SELECT * FROM titles;

--Create employees table
CREATE TABLE employees (
	EmpNum INT PRIMARY KEY,
	EmpTitleID VARCHAR(10),
	BirthDate DATE,
	FirstName VARCHAR,
	LastName VARCHAR,
	Sex VARCHAR,
	HireDate DATE,
	FOREIGN KEY (EmpTitleID) REFERENCES titles(TitleID));
--Check imported data
SELECT * FROM employees;

--Create dept_employees table
CREATE TABLE dept_employees (
	EmpNum INT,
	DeptNum VARCHAR(10),
	FOREIGN KEY (EmpNum) REFERENCES employees(EmpNum),
	FOREIGN KEY (DeptNum) REFERENCES departments(DeptNum));
--Check imported data
SELECT * FROM dept_employees;
--Add composite key to table
ALTER TABLE dept_employees 
ADD PRIMARY KEY (EmpNum, DeptNum); 

--Create dept_managers table
CREATE TABLE dept_managers (
	DeptNum VARCHAR(10),
	EmpNum INT,
	FOREIGN KEY (DeptNum) REFERENCES departments(DeptNum),
	FOREIGN KEY (EmpNum) REFERENCES employees(EmpNum));
--Check imported data
SELECT * FROM dept_managers;
--Add composite key to table
ALTER TABLE dept_managers
ADD PRIMARY KEY (DeptNum, EmpNum); 

--Create salaries table
CREATE TABLE salaries (
	EmpNum INT,
	Salary INT,
	FOREIGN KEY (EmpNum) REFERENCES employees(EmpNum));
--Check imported data
SELECT * FROM salaries;
