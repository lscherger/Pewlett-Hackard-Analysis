--Employee Database challenge 
SELECT emp_no, first_name, last_name FROM employees;

SELECT title, from_date, to_date FROM titles;

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


SELECT * FROM retirement_titles;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(title),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;



SELECT 	e.emp_no,
		e.first_name, 
		e.last_name, 
        e.birth_date,
		de.from_date, 
		de.to_date,
        t.title
INTO membership_eligibility
FROM dept_emp AS de
INNER JOIN titles AS t 
ON (t.emp_no = de.emp_no)
INNER JOIN employees AS e
ON (e.emp_no = de.emp_no)
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY de.emp_no;

SELECT * FROM membership_eligibility;