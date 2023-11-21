/*
create table if not exists employees (
	emp_no int,
	emp_title varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

create table if not exists titles (
	title_id varchar,
	title varchar
);

create table if not exists salaries (
	salary int,
	emp_no int
);

create table if not exists dept_manager (
	dept_no varchar,
	emp_no int
);

create table if not exists dept_emp (
	emp_no int,
	dept_no varchar
);

create table if not exists departments (
	dept_no varchar,
	dept_name varchar
);


SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees 
WHERE (hire_date) = 1986;

SELECT d.emp_no, d.dept_no, e.last_name, e.first_name
FROM dept_manager d
JOIN employees e ON d.emp_no = e.emp_no; 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_no
FROM employees e
JOIN dept_emp d ON e.emp_no = d.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE'B%';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no
FROM employees e
JOIN dept_emp d ON e.emp_no = d.emp_no
WHERE d.dept_no = 'd007'

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no
FROM employees e
JOIN dept_emp d ON e.emp_no = d.emp_no
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005'
*/
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
