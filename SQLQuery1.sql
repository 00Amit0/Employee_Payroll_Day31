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
    
          
