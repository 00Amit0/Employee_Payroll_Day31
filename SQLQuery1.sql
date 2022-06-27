--------------WELCOME TO MSSQL QUERIES---------------------

/*UC1---Creaate Database--------*/
create Database payroll_service;                          
use payroll_service;     

/*UC2---Added table employee_payroll---------*/
create table employee_payroll
(
Id int PRIMARY KEY identity,
Name varchar(30),
Salary int,
StartDate date
)
    
/*UC3---Inserting values in table------------*/
insert into employee_payroll(Name,Salary,StartDate) values('Ankit', 1000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Amit', 2000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Tushar', 3000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Milan',4000, GETDATE())
insert into employee_payroll(Name,Salary,StartDate) values('Harsh', 5000, GETDATE())

/*UC4---Getting all values from table--------*/ 
select * from employee_payroll
          
