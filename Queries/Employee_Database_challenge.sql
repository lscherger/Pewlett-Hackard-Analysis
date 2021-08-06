--Employee Database challenge 
SELECT emp_no, first_name, last_name FROM employees;
SELECT title, from_date, to_date FROM titles;

--create retirement_titles table
SELECT 	e.emp_no,
		e.first_name, 
		e.last_name, 
		t.title, 
		t.from_date, 
		t.to_date
INTO retirement_titles
FROM titles AS t
INNER JOIN employees AS e
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


SELECT * FROM dept_emp;
--create retiring employees by department
DROP TABLE new_retirement_titles;
SELECT 	DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name, 
		e.last_name, 
		t.title, 
		t.from_date, 
		t.to_date,
		de.dept_no		
INTO new_retirement_titles
FROM titles AS t
INNER JOIN employees AS e
ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp AS de
ON (de.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT 	COUNT(n.emp_no),
		d.dept_name
FROM new_retirement_titles AS n
INNER JOIN departments as d
ON (d.dept_no = n.dept_no)
GROUP BY d.dept_name
ORDER BY COUNT(n.emp_no) DESC;



-- Use Dictinct with Orderby to remove duplicate rows to create unique_titles table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;


-- select counts by title for retiring_titles table
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT SUM(count) FROM retiring_titles;

-- create mentorship eligibility table
SELECT 	e.emp_no,
		e.first_name, 
		e.last_name, 
        e.birth_date,
		de.from_date, 
		de.to_date,
        t.title
INTO mentorship_eligibility
FROM dept_emp AS de
INNER JOIN titles AS t 
ON (t.emp_no = de.emp_no)
INNER JOIN employees AS e
ON (e.emp_no = de.emp_no)
WHERE de.to_date = ('9999-01-01') 
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY de.emp_no;


--additional query 2: new mentorship eligibility table
SELECT 	e.emp_no,
		e.first_name, 
		e.last_name, 
        e.birth_date,
		de.from_date, 
		de.to_date,
        t.title
INTO new_mentorship_eligibility
FROM dept_emp AS de
INNER JOIN titles AS t 
ON (t.emp_no = de.emp_no)
INNER JOIN employees AS e
ON (e.emp_no = de.emp_no)
WHERE de.to_date = ('9999-01-01') 
AND (e.birth_date BETWEEN '1956-01-01' AND '1965-12-31')
ORDER BY de.emp_no;

SELECT COUNT(emp_no) FROM new_mentorship_eligibility;

SELECT COUNT(emp_no) FROM mentorship_eligibility;
