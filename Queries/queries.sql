COPY departments FROM '/Users/priyamittal/Public/departments.csv' DELIMITER ',' CSV HEADER;
COPY titles FROM '/Users/priyamittal/Public/titles.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM '/Users/priyamittal/Public/employees.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM '/Users/priyamittal/Public/salaries.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM '/Users/priyamittal/Public/dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM '/Users/priyamittal/Public/dept_manager.csv' DELIMITER ',' CSV HEADER;

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no as "employee number", emp.first_name as "first name", 
emp.last_name as "last name", emp.sex as "sex", sal.salary as "salary"
FROM employees as emp
LEFT JOIN salaries as sal
ON (sal.emp_no = emp.emp_no)
ORDER BY emp.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number,
-- department name, the manager’s employee number, last name, first name.
SELECT de.dept_name, dm.emp_no, dm.dept_no, e.first_name, e.last_name
FROM dept_manager as dm
LEFT JOIN departments as de
ON de.dept_no = dm.dept_no
LEFT JOIN employees as e
ON dm.emp_no = e.emp_no
ORDER BY e.emp_no;

-- 4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT de.dept_name, e.emp_no, e.first_name, e.last_name
FROM dept_emp as dem
LEFT JOIN departments as de
ON de.dept_no = dem.dept_no
LEFT JOIN employees as e
ON dem.emp_no = e.emp_no
ORDER BY e.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is “Hercules” and last names begin with “B.”
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY last_name;

-- 6. List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.
SELECT de.dept_name, e.emp_no, e.first_name, e.last_name
FROM dept_emp as dem
LEFT JOIN departments as de
ON de.dept_no = dem.dept_no
LEFT JOIN employees as e
ON dem.emp_no = e.emp_no
WHERE de.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT de.dept_name, e.emp_no, e.first_name, e.last_name
FROM dept_emp as dem
LEFT JOIN departments as de
ON de.dept_no = dem.dept_no
LEFT JOIN employees as e
ON dem.emp_no = e.emp_no
WHERE de.dept_name = 'Sales' 
OR de.dept_name = 'Development'
ORDER BY e.emp_no;

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;






