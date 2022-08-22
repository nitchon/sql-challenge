-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.employee_id, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.employee_id = s.employee_id;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,last_name,hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.department_id,d.department_name,e.employee_id,e.first_name,e.last_name
FROM department as d
JOIN department_managers_junction as dm_j
ON d.department_id = dm_j.department_id
JOIN employees as e
ON dm_j.employee_id = e.employee_id;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

Select e.employee_id,e.first_name,e.last_name, d.department_name
FROM employees as e
JOIN department_employees_junction as de_j
ON e.employee_id = de_j.employee_id
JOIN department as d
ON d.department_id = de_j.department_id;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select e.employee_id,e.first_name,e.last_name, d.department_name
FROM employees as e
JOIN department_employees_junction as de_j
ON e.employee_id = de_j.employee_id
JOIN department as d
ON d.department_id = de_j.department_id
WHERE d.department_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select e.employee_id,e.first_name,e.last_name, d.department_name
FROM employees as e
JOIN department_employees_junction as de_j
ON e.employee_id = de_j.employee_id
JOIN department as d
ON d.department_id = de_j.department_id
WHERE d.department_name = 'Sales'
OR d.department_name = 'Development';

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(last_name) as "Last Name Count"
FROM employees
GROUP BY (last_name)
ORDER BY "Last Name Count" DESC;

-- Pandas/SqlAlchemy Query
SELECT e.employee_id, s.salary,t.title 
FROM employees as e JOIN salaries as S ON e.employee_ID = s.employee_id 
JOIN titles as t ON e.employee_title_id = t.title_id;
