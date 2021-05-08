--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no
order by emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where date_part('year',hire_date) = 1986
order by hire_date

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_managers.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
from dept_managers
join departments on dept_managers.dept_no = departments.dept_no
join employees on dept_managers.emp_no = employees.emp_no
order by emp_no
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
order by emp_no
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name. 
--SALES DEPT NUMBER IS d007.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007'
order by emp_no
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SALES AND DEVELOPMENT DEPT. NUMBERS ARE d007 AND d005
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd005' or departments.dept_no = 'd007'
order by emp_no
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Frequency" DESC;

