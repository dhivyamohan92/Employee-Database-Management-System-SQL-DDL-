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
rename table department_table to departments;
rename table employee_table to employees;
rename table location_table to location;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

Alter table location add column location varchar(50);

INSERT INTO location (Location_Name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

use employee_db;

Alter table employees add column Age INT;

Alter table employees  drop column Email_Adress;

 

select * from departments;
Select * from employees;
Select * from location;

INSERT INTO employees (Emp_ID, Emp_Name, Gender, Age, Date_of_Joining, Designation, Department_id, Location_id, Salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

/* Displaying distinct salary*/

Select distinct Salary from employees;

SELECT Age AS Employee_Age,
       Salary AS Employee_Salary
FROM Employees;

Select Emp_Name,Salary,Date_of_Joining 
from employees 
where Salary >50000 and Date_of_Joining <'2016-01-01';

SET SQL_SAFE_UPDATES = 0;

Update employees 
set Designation = 'Data Scientist'
Where Designation is Null;

SET SQL_SAFE_UPDATES = 1;

Select Designation from employees;

SELECT *
FROM employees
ORDER BY Department_ID ASC, Salary DESC;

Select * from employees
where year(Date_of_Joining) = 2018
order by Date_of_Joining
Limit 5;

Select sum(e.Salary) as Finance_total_salary 
from employees e inner join departments d on e.Department_id = d.Department_id
where d.Department_Name = 'Finance';

Select Min(Age) as MinimumAge from employees;

/*List the maximum salary for each location.*/



Select Max(e.salary) as Maximum_Salary , l.Location_Name 
from employees e right join location l on e.Location_id = l.Location_id 
group by l.Location_Name;

Select avg(salary) as Avg_Salary,Designation 
from employees
where Designation like '%Analyst%'
group by Designation;

Use employee_db;

Select d.Department_Name,Count(e.Emp_ID) Total_Employees
from departments d inner join employees e on d.Department_id = e.Department_id
group by d.Department_Name 
having Total_Employees>3;

Select L.Location_Name,e.Emp_Name,e.Age from location L
Inner join employees e on L.Location_id = e.Location_id
where e.Gender ='F' and e.Age<30;

Select e.Emp_Name,e.Designation,d.Department_Name from
departments d inner join employees e on d.Department_id = e.Department_id;

Select d.Department_Name,count(distinct e.Emp_id) as Total_Employees
From departments d left join employees e on d.Department_id = e.Department_id
group by d.Department_Name;

Select L.Location_Name,e.Emp_Name
from employees e right join
location L  on L.Location_id = e.Location_id;

Select L.Location_Name,e.Emp_Name
from employees e right join
location L  on L.Location_id = e.Location_id;

Select L.Location_Name,D.Department_Name
from location L Cross join departments d ;

SELECT
    e1.Emp_Name AS Employee1,
    e2.Emp_Name AS Employee2,
    e1.Department_ID
FROM employees e1
INNER JOIN employees e2
ON e1.Department_ID = e2.Department_ID
WHERE e1.Emp_ID < e2.Emp_ID;

Use employee_db;

Select Emp_Name,Salary ,
Rank() over(order by Salary desc) as Rank_Salary
From Employees;

SELECT
    Emp_ID,
    Emp_Name,
    Department_ID,
    Salary,
    DENSE_RANK() OVER (
        PARTITION BY Department_ID
        ORDER BY Salary DESC
    ) AS Salary_Rank
FROM employees;

SELECT
    Emp_ID,
    Emp_Name,
    Department_ID,
    Salary,
    SUM(Salary) OVER (
        PARTITION BY Department_ID
        ORDER BY Salary
    ) AS Running_Total_Salary
FROM employees;







 







