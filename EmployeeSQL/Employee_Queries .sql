-- Data Analysis

-- List the employee number, last name, first name, sex, and salary of each employee.
Select  employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no; 

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select * from employees WHERE hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select  departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name 
from dept_emp
join departments on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select  departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name 
from dept_emp
join departments on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no = employees.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name Like 'B%' 


-- List each employee in the Sales department, including their employee number, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, count(last_name) as "Total Count of Name"
from employees
group by last_name
order by "Total Count of Name" desc;

