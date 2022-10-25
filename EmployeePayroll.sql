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

insert into employee_payroll_table
 (name,salary,start_date) values("Bill",10000,"2018-01-03"),("Teresa",20000,"2019-11-13"),("Charlie",30000,"2020-05-21");
 
 select * from employee_payroll_table;
 
 select * from employee_payroll_table where name='Bill';
 
 select * from employee_payroll_table where start_date between cast('2018-01-01' as date) and Date(now());