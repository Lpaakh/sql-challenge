--Laura Paakh May

--Data Analysis 

--Question 1)
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
	FROM public."Employees" as emp
	INNER JOIN public."Salaries" as sal
	ON emp.emp_no = sal.emp_no;
	
--Question 2)
SELECT first_name, last_name, hire_date
	FROM public."Employees"
	WHERE hire_date BETWEEN '01/01/86' AND '12/31/86';
	
--Question 3)
SELECT dep.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
	FROM public."Departments" as dep
	INNER JOIN public."Dept_Manager" as dep_m
	ON dep.dept_no = dep_m.dept_no
	INNER JOIN public."Employees" as emp
	ON dep_m.emp_no = emp.emp_no;
	
--Question 4)
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
	FROM public."Employees" as emp
	INNER JOIN public."Dept_emp" as dep_e
	ON emp.emp_no = dep_e.emp_no
	INNER JOIN public."Departments" as dep
	ON dep_e.dept_no = dep.dept_no;
	
--Question 5)
SELECT first_name, last_name, sex
	FROM public."Employees"
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
--Question 6)
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
	FROM public."Employees" as emp
	INNER JOIN public."Dept_emp" as dep_e
	ON emp.emp_no = dep_e.emp_no
	INNER JOIN public."Departments" as dep
	ON dep_e.dept_no = dep.dept_no
	WHERE dept_name = 'Sales';
	
--Question 7)
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
	FROM public."Employees" as emp
	INNER JOIN public."Dept_emp" as dep_e
	ON emp.emp_no = dep_e.emp_no
	INNER JOIN public."Departments" as dep
	ON dep_e.dept_no = dep.dept_no
	WHERE dept_name = 'Sales' OR dept_name = 'Development';
	
--Question 8)
SELECT last_name,count(*)
	FROM public."Employees"
	GROUP BY last_name 
	ORDER BY last_name DESC