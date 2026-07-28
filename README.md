# Employee-Database-Management-System-SQL-DDL-
# 

## 📌 Project Overview

This project demonstrates the implementation of **SQL Data Definition Language (DDL)** commands by designing and managing an **Employee Database Management System** in **MySQL**. It covers database creation, table design, constraints, schema modifications, table relationships, and database maintenance operations.

The project showcases fundamental database design principles and serves as a beginner-friendly reference for learning SQL DDL concepts.

---

## 🎯 Objectives

* Create and manage a relational database using MySQL.
* Design normalized tables with appropriate data types.
* Implement data integrity using SQL constraints.
* Establish relationships between tables using Foreign Keys.
* Perform schema modifications using `ALTER TABLE`.
* Execute database maintenance operations such as renaming, truncating, and dropping database objects.

---

## 🛠️ Technologies Used

* **Database:** MySQL 8.x
* **IDE:** MySQL Workbench
* **Language:** SQL (DDL)

---

## 📂 Database Schema

### Database

`Employee_DB`

### Tables

### 1. Departments

Stores department information.

| Column          | Data Type   | Constraints      |
| --------------- | ----------- | ---------------- |
| Department_ID   | INT         | Primary Key      |
| Department_Name | VARCHAR(50) | NOT NULL, UNIQUE |

---

### 2. Locations

Stores employee location details.

| Column        | Data Type   | Constraints                 |
| ------------- | ----------- | --------------------------- |
| Location_ID   | INT         | AUTO_INCREMENT, Primary Key |
| Location_Name | VARCHAR(50) | NOT NULL, UNIQUE            |

---

### 3. Employees

Stores employee information.

| Column        | Data Type     | Constraints               |
| ------------- | ------------- | ------------------------- |
| Emp_ID        | INT           | Primary Key               |
| Emp_Name      | VARCHAR(50)   | NOT NULL                  |
| Gender        | VARCHAR(1)    | CHECK ('M','F')           |
| Age           | INT           | CHECK (Age ≥ 18)          |
| Hire_Date     | TIMESTAMP     | DEFAULT CURRENT_TIMESTAMP |
| Designation   | VARCHAR(20)   |                           |
| Salary        | DECIMAL(10,2) |                           |
| Department_ID | INT           | Foreign Key               |
| Location_ID   | INT           | Foreign Key               |

---

## 🔑 Constraints Implemented

* **PRIMARY KEY**
* **FOREIGN KEY**
* **AUTO_INCREMENT**
* **NOT NULL**
* **UNIQUE**
* **CHECK**
* **DEFAULT**

---

## 🔗 Table Relationships

```text
Departments
-------------
Department_ID (PK)
Department_Name
        │
        │
        ▼
Employees
-------------
Emp_ID (PK)
Emp_Name
Department_ID (FK)
Location_ID (FK)
Designation
Salary
Gender
Hire_Date
        ▲
        │
        │
Locations
-------------
Location_ID (PK)
Location_Name
```

---

## ⚙️ DDL Operations Performed

### Database Operations

* Created the `Employee_DB` database.
* Selected the active database using `USE`.

### Table Creation

* Created `Department_Table`.
* Created `Location_Table`.
* Created `Employee_Table`.
* Applied all required constraints.

### Schema Modifications

* Added `Email_Address` column.
* Modified the `Designation` column.
* Dropped the `Age` column.
* Renamed `Hire_Date` to `Date_of_Joining`.

### Table Management

* Renamed `Department_Table` to `Departments_Info`.
* Renamed `Location_Table` to `Locations`.

### Database Maintenance

* Truncated the `Employee_Table`.
* Dropped the `Employee_Table`.
* Dropped the `Employee_DB` database.

---

## 📚 SQL Concepts Covered

* CREATE DATABASE
* USE DATABASE
* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* AUTO_INCREMENT
* NOT NULL
* UNIQUE
* CHECK Constraint
* DEFAULT Constraint
* ALTER TABLE
* ADD COLUMN
* MODIFY COLUMN
* DROP COLUMN
* CHANGE COLUMN
* RENAME TABLE
* TRUNCATE TABLE
* DROP TABLE
* DROP DATABASE

---

## 🎓 Learning Outcomes

This project helped reinforce the following SQL concepts:

* Relational database design
* Table creation and normalization
* Constraint implementation
* Entity relationships using foreign keys
* Schema evolution using DDL commands
* Database maintenance and administration
* SQL best practices for database design

---

## 🚀 Future Enhancements

* Insert sample employee records using DML.
* Perform CRUD operations.
* Implement JOIN queries across related tables.
* Create Views and Stored Procedures.
* Add Indexes for query optimization.
* Implement Triggers for automated auditing.

---

## 📸 Sample ER Relationship

```text
Departments (1)
       │
       │
       ├───────────────┐
       │               │
       ▼               ▼
Employees (Many)    Locations (1)
```

---

## 👩‍💻 Author

**Dhivya Mohan**

* **Role:** Aspiring Data Analyst
* **Skills:** SQL • Power BI • Excel • Python • DAX
* **Domain:** Data Analytics | Business Intelligence | US Healthcare Operations

---

## ⭐ If you found this project useful, consider giving it a star!
