show databases;

create database employee_payroll;

use employee_payroll;

select database();

show tables;

create table employee_payroll_table(
id int unsigned auto_increment not null,
name varchar(40),
salary double,
start_date date ,
primary key(id)
);

describe employee_payroll_table;