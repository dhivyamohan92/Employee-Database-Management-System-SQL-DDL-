Create database IF NOT EXISTS Employee_DB;
use Employee_DB;
Create table Department_Table 
(
Department_id INT primary key,
Department_Name varchar(50) Not null Unique
);
Create table Location_Table
(
Location_id INT auto_increment primary key,
Location_Name Varchar(50) Not Null Unique
);
Create table Employee_Table
(
Emp_ID INT Primary Key,
Emp_Name Varchar(50) NOT null,
Gender Varchar(1) CHECK (Gender in ('M','F')),
Age INT check (Age>=18),
Hire_Date timestamp default current_timestamp,
Designation Varchar(20),
Salary Decimal(10,2),
Department_id INT,
Location_id INT,
Foreign Key (Department_id) references Department_Table(Department_id),
foreign key(Location_id) references Location_Table(Location_id)	
);
Alter table Employee_Table
add Email_Adress Varchar(100);
Alter table Employee_Table
modify Designation Varchar(100);
Alter table Employee_Table
Drop column age;
Alter table Employee_Table
change Hire_Date Date_of_Joining date ;
rename table Department_Table to Departments_Info;
rename table Location_Table to Locations;
truncate table Employee_Table;
Drop table Emplyee_Table;
Drop database IF exists Employee_DB;