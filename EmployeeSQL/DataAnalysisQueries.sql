----- DATA ANALYSIS -----

--1) List the employee #, last name, first name, sex, & salary for each employee
----have to merge info from employees and salaries tables
SELECT e.EmpNum, e.LastName, e.FirstName, e.Sex, s.Salary
FROM employees AS e
INNER JOIN salaries AS s ON e.EmpNum=s.EmpNum;

--2) List the first name, last name, and hire date for those hired in 1986
----have to limit data from employees table to dates between 1/1/86 and 12/31/86 
SELECT FirstName, LastName, HireDate
FROM employees
WHERE HireDate BETWEEN '1986-01-01' AND '1986-12-31';

--3) List the dept number, dept name, employee number, last name & 1st name for each manager
----have to take data from dept_managers, departments, and employees tables with merges
SELECT dm.DeptNum, d.DeptName, dm.EmpNum, e.LastName, e.FirstName
FROM dept_managers AS dm
INNER JOIN departments AS d ON dm.DeptNum=d.DeptNum
INNER JOIN employees AS e ON dm.EmpNum=e.EmpNum;

--4) List the employee number, last name, first name, & dept name for each employee
----to get department name that corresponds to each employee,
----you have to merge employees table with dept_employees based on employee number
----to then merge dept_employees with departments table based dept number
SELECT e.EmpNum, e.LastName, e.FirstName, d.DeptName
FROM employees AS e
INNER JOIN dept_employees AS de ON e.EmpNum=de.EmpNum
INNER JOIN departments AS d ON de.DeptNum=d.DeptNum;

--5) List 1st name, last name, & sex of those with 1st name Hercules & last name starts w/ B 
SELECT FirstName, LastName, Sex 
FROM employees 
WHERE FirstName = 'Hercules' AND LastName LIKE 'B%';

--6) List employee number, last name, 1st name, & dept name of all Sales Dept employees
----repeat process for #4
----then limit data to those with DeptName 'Sales' in departments table
SELECT e.EmpNum, e.LastName, e.FirstName, d.DeptName
FROM employees AS e
INNER JOIN dept_employees AS de ON e.EmpNum=de.EmpNum
INNER JOIN departments AS d ON de.DeptNum=d.DeptNum
WHERE d.DeptName = 'Sales';

--7) List employee number, last name, 1st name, & dept name of Sales and Dev Dept employees
----repeat process for #4
----then limit data to those with DeptName 'Sales' OR 'Development' in departments table
SELECT e.EmpNum, e.LastName, e.FirstName, d.DeptName
FROM employees AS e
INNER JOIN dept_employees AS de ON e.EmpNum=de.EmpNum
INNER JOIN departments AS d ON de.DeptNum=d.DeptNum
WHERE d.DeptName = 'Sales' OR d.DeptName = 'Development';

--8) List the frequency count of employee last names in descending order
----use data from employees table to get count of last names
----have to use a group by function (group by last name),
----and order by funciton (by the descending count of last names)
SELECT LastName, COUNT(LastName)
FROM employees
GROUP BY LastName
ORDER BY COUNT(LastName) DESC;
