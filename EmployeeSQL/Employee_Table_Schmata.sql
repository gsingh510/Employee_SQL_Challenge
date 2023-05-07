-- Create each table for data imported from csv's
-- Assigning the headers, data types, and primary and secondary keys
Create table employees(
	emp_no INT NOT NULL,
	emp_title_id varchar NOT NULl,
	birth_date date NOT NULL,	
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar NOT NULL,
	hire_date date NOT NULL,
	Constraint pk_employees primary key (emp_no)
	);

Create table departments(
	dept_no	varchar NOT NULL,
	dept_name varchar NOT NULL,
	Constraint pk_departments primary key (dept_no)
	);

Create table dept_emp(
	emp_no int NOT NULL,
	dept_no varchar NOT NULL,
	Constraint pk_dept_emp primary key (emp_no,dept_no)
	);


Create table dept_manager(
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	Constraint pk_dept_manager primary key (dept_no,emp_no)
	);

Create table salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	Constraint pk_salaries primary key (emp_no)
	);

Create table titles(
	title_id varchar NOT NULL,
	title varchar NOT NULL,
	Constraint pk_titles primary key (title_id)
	);
	
---- Adding contraints to each of the tables created

Alter table "salaries" ADD CONSTRAINT "fk_salaries_emp_no" foreign key ("emp_no") REFERENCES employees ("emp_no");

Alter table dept_manager ADD CONSTRAINT fk_dept_manager_emp_no foreign key ("emp_no") REFERENCES employees ("emp_no");
Alter table dept_manager ADD CONSTRAINT fk_dept_manager_dept_no foreign key ("dept_no") REFERENCES departments ("dept_no");

Alter table dept_emp ADD CONSTRAINT fk_dept_emp_emp_no foreign key ("emp_no") REFERENCES employees ("emp_no");
Alter table dept_emp ADD CONSTRAINT fk_dept_emp_dept_no foreign key ("dept_no") REFERENCES departments ("dept_no");
-- Test
select * from employees;



