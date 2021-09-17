# SQL-Challenge
### Objective
Develop a database using SQL code to store Pewlett Hackard's employee information from the 1980s and '90s, and use it to run data analyses queries. 

### Description of the Data: Pewlett Hackard Employee CSVs
The 1980-1990s employee data for the company Pewlett Hackard are stored within 6 csv files:
- **departments.csv** - has two columns: 
  - _dept_no_ - the ID number for each of the 9 departments at the company
  - _dept_name_ - the name of the department
- **dept_manager.csv** - has two columns: 
  - _dept_no_ - the ID number for the department each of the 24 managers works in
  - _emp_no_ - each manager's respective employee ID number
- **dept_emp.csv** - has two columns: 
  - _emp_no_ - the unique ID number for each company employee
  - _dept_no_ - the ID number for the department each employee works in
- **titles.csv** - has two columns: 
  - _title_id_ - the unique ID number for each of the 7 job titles at the company
  - _title_ - the name of the job title
- **salaries.csv** - has two columns: 
  - _emp_no_ - each employee's ID number
  - _salary_ - each employee's respective salary
- **employees.csv** - has seven columns: 
  - _emp_no_ - the ID number for every company employee
  - _emp_title_ - the title ID number for each employee's respective job title
  - _birth_date_ - the employee's birthday
  - _first_name_ - the employee's first name
  - _last_name_ - the employee's last name
  - _sex_ - each employee's sex (M or F)
  - _hire_date_ - the date the employee was hired 

### What the Code Should Do
Two SQL code files should be included:
- **Table Schemata**, which should create a table schema for each of the csv files with appropriate data types, primary keys, foreign keys, and other constraints
- **Queries**, which, once the csv files are properly imported, should perform the following data analysis queries:
  - List the employee number, last name, first nale, sex, and salary of each employee
  - List the first name, last name, and hire data for all employees hired in 1986
  - List the department number, department name, employee number, last name, and first name for all of the department managers
  - List the employee number, last name, first name, and department name of every employee
  - List the first name, last name, and sex for all employees whose first name is "Hercules" and whose last name starts with "B"
  - List the employee number, last name, first name, and department name for all employees in the Sales Department
  - List the employee number, last name, first name, and department name for all employees in the Sales AND Development departments
  - List the frequency count of employee last names (the number of those who share each last name) in descending order

Additionally, a Jupyter Notebook should be included which imports the SQL database into Pandas using SQLAlchemy, and creates the following charts for data analysis:
- A histogram that shows the most common salary ranges for employees
- A bar chart of average salary by title
