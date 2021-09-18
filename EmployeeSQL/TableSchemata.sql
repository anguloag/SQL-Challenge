----- CREATING TABLES -----

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL);
--Check imported data
SELECT * FROM departments;

--Create titles table
CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL);
--Check imported data
SELECT * FROM titles;

--Create employees table
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));
--Check imported data
SELECT * FROM employees;

--Create dept_employees table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
--Add composite key to table
ALTER TABLE dept_emp 
ADD PRIMARY KEY (emp_no, dept_no); 
--Check imported data
SELECT * FROM dept_emp;

--Create dept_managers table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
--Add composite key to table
ALTER TABLE dept_manager
ADD PRIMARY KEY (dept_no, emp_no); 
--Check imported data
SELECT * FROM dept_manager;

--Create salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
ALTER TABLE salaries
ADD PRIMARY KEY (emp_no);
--Check imported data
SELECT * FROM salaries;
