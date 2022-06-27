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
insert into employee_payroll(Name,Salary,StartDate) values('Vani', 5000, GETDATE())


/*UC4---Getting all values from table--------*/ 
select * from employee_payroll
 
/*UC5---Getting salary for specific person and for all persons falling in given date-----------*/
select Salary from employee_payroll
where Name='Amit'

select salary from employee_payroll
where StartDate between cast('2022-06-20' as date) and GETDATE() 

/*UC6---Adding Gender column in table and showing it-----------*/
alter table employee_payroll
Add Gender char

update employee_payroll
set Gender='M'
where Id in (1,2,3,4,5)

update employee_payroll
set Gender='F'
where Id=6

select * from employee_payroll        
