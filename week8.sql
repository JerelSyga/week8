SELECT title AS "Job Title", count(*) AS "Number of Employees" FROM employees
INNER JOIN titles ON titles.emp_no = employees.emp_no
WHERE date(birth_date)>= '1965-01-01'
GROUP BY title;
SELECT d.dept_name AS "Department Name", avg(s.salary) AS "Average Salary" FROM departments d
INNER JOIN dept_emp de ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no
GROUP BY d.dept_name;
SELECT d.dept_name AS "Department", s.salary AS “Salary” FROM  departments d
INNER JOIN dept_emp de ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no
GROUP BY d.dept_name;