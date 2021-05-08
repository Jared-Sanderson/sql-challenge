drop table if exists departments;
drop table if exists employees;
drop table if exists dept_emp;
drop table if exists dept_managers;
drop table if exists salaries;
drop table if exists titles;


create table departments(
dept_no varchar (30),
dept_name varchar (30) not null,
primary key (dept_no)
);

select * from departments;

create table employees(
emp_no int not null,
emp_title_id varchar (30) not null,
birth_date date not null,
first_name varchar (30) not null,
last_name varchar (30) not null,
sex varchar (30) not null,
hire_date date not null,
primary key (emp_no)
);

select * from employees

create table dept_emp(
emp_no int not null,
dept_no varchar (30) not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp;

create table dept_managers(
dept_no varchar (30),
emp_no int,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)
);

select * from dept_managers

create table salaries(
emp_no int not null,
salary int not null,
foreign key (emp_no) references employees(emp_no)
);

select * from salaries

create table titles(
title_id varchar (30) primary key,
title varchar (30) not null
);

select * from titles