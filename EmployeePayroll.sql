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
 
 select salary from employee_payroll_table where name='Bill';
 
 select * from employee_payroll_table where start_date between cast('2018-01-01' as date) and Date(now());
 
 alter table employee_payroll_table add gender varchar(1) after name;
 
 describe employee_payroll_table;
 
 update employee_payroll_table set gender='M' where name='Bill' or name='charlie';
 update employee_payroll_table set gender='F' where name='Teresa';
 
 select * from employee_payroll_table;
 
  select gender,sum(salary) as total_salary,min(salary) as minimum_salary,max(salary) as maximum_salary,avg(salary) as average_salary,count(salary) as no_of_employees from employee_payroll_table group by gender;
  
  alter table employee_payroll_table add phone_number varchar(20),add address varchar(150) default('TBD'),add department varchar(20) not null after salary;
  
  describe employee_payroll_table;
  select * from employee_payroll_table;
  
   alter table employee_payroll_table add basic_pay double,add deductions double,add taxable_pay double,add income_tax double,add net_pay double after salary;
   alter table employee_payroll_table drop column salary;
   describe employee_payroll_table;
   
   
   UPDATE employee_payroll_table SET department = 'Sales' where name = 'Teresa';
   INSERT INTO employee_payroll_table (name, department, gender, basic_pay, deductions, taxable_pay, income_tax, net_pay, start_date) VALUES('Terisa', 'sales', 'F', 300000.00, 100000.00, 50000.00, 50000.00, 100000.00, '2018-02-06');
   select * from employee_payroll_table where name='terisa';
   
   