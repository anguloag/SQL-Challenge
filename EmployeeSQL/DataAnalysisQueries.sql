----- DATA ANALYSIS -----

--1) List the employee #, last name, first name, sex, & salary for each employee
----have to merge info from employees and salaries tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no=s.emp_no;

--2) List the first name, last name, and hire date for those hired in 1986
----have to limit data from employees table to dates between 1/1/86 and 12/31/86 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3) List the dept number, dept name, employee number, last name & 1st name for each manager
----have to take data from dept_managers, departments, and employees tables with merges
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON dm.dept_no=d.dept_no
INNER JOIN employees AS e ON dm.emp_no=e.emp_no;

--4) List the employee number, last name, first name, & dept name for each employee
----to get department name that corresponds to each employee,
----you have to merge employees table with dept_employees based on employee number
----to then merge dept_employees with departments table based dept number
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no;

--5) List 1st name, last name, & sex of those with 1st name Hercules & last name starts w/ B 
SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6) List employee number, last name, 1st name, & dept name of all Sales Dept employees
----repeat process for #4
----then limit data to those with DeptName 'Sales' in departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

--7) List employee number, last name, 1st name, & dept name of Sales and Dev Dept employees
----repeat process for #4
----then limit data to those with DeptName 'Sales' OR 'Development' in departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--8) List the frequency count of employee last names in descending order
----use data from employees table to get count of last names
----have to use a group by function (group by last name),
----and order by funciton (by the descending count of last names)
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
