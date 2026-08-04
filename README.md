# Employee Database Management System – SQL Querying & Data Analysis

## 📌 Project Overview

This project demonstrates the implementation of **SQL Query Language (DML & Data Retrieval)** techniques using an **Employee Database Management System** in **MySQL**. The project focuses on querying relational data to generate meaningful business insights through data filtering, sorting, aggregation, grouping, JOIN operations, and Window Functions.

It showcases industry-standard SQL querying techniques used by Data Analysts to transform business requirements into actionable reports and analytical insights.

---

## 🎯 Objectives

* Retrieve and analyze employee data using SQL queries.
* Filter records using comparison operators and logical conditions.
* Sort and limit result sets for efficient reporting.
* Perform aggregate calculations for business analysis.
* Group and summarize data using `GROUP BY` and `HAVING`.
* Retrieve related information using different SQL JOIN operations.
* Apply Window Functions for ranking and cumulative calculations.
* Strengthen SQL skills for real-world data analysis and reporting.

---

## 🛠️ Technologies Used

* **Database:** MySQL 8.x
* **IDE:** MySQL Workbench
* **Language:** SQL (DML & Querying)

---

# 📂 Database Schema

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

Stores employee location information.

| Column        | Data Type   | Constraints      |
| ------------- | ----------- | ---------------- |
| Location_ID   | INT         | Primary Key      |
| Location_Name | VARCHAR(50) | NOT NULL, UNIQUE |

---

### 3. Employees

Stores employee details.

| Column        | Data Type     | Constraints      |
| ------------- | ------------- | ---------------- |
| Employee_ID   | INT           | Primary Key      |
| Employee_Name | VARCHAR(50)   | NOT NULL         |
| Gender        | VARCHAR(10)   | NOT NULL         |
| Age           | INT           | CHECK (Age ≥ 18) |
| Hire_Date     | DATE          | NOT NULL         |
| Designation   | VARCHAR(100)  |                  |
| Salary        | DECIMAL(10,2) |                  |
| Department_ID | INT           | Foreign Key      |
| Location_ID   | INT           | Foreign Key      |

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
Employee_ID (PK)
Employee_Name
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

# 📋 SQL Operations Performed

## 🔹 Data Retrieval

* Retrieved employee records using `SELECT`
* Retrieved unique salary values using `DISTINCT`
* Renamed output columns using `AS`

---

## 🔹 Data Filtering

Implemented filtering using:

* `WHERE`
* Comparison Operators (`>`, `<`, `=`)
* Logical Operators (`AND`)
* `IS NULL`
* Date-based filtering

Business Scenarios:

* Employees earning more than ₹50,000
* Employees hired before **2016-01-01**
* Updating missing designations to **Data Scientist**

---

## 🔹 Sorting & Limiting Results

Implemented:

* `ORDER BY`
* `LIMIT`

Reports Generated:

* Employees sorted by Department and Salary
* First five employees hired during 2018

---

## 🔹 Aggregate Functions

Implemented:

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

Business Reports:

* Total Finance department salary
* Minimum employee age
* Average salary by designation
* Maximum salary by location

---

## 🔹 GROUP BY & HAVING

Implemented grouped analysis using:

* `GROUP BY`
* `HAVING`

Business Reports:

* Departments with fewer than three employees
* Locations where female employees have an average age below 30
* Salary analysis by designation

---

# 🔗 JOIN Operations

### ✅ INNER JOIN

Retrieve employee names, designations, and department names for employees assigned to departments.

---

### ✅ LEFT JOIN

Display all departments with the total number of employees, including departments without employees.

---

### ✅ RIGHT JOIN

Display every location with employees assigned to each location, including locations with no employees.

---

### ✅ CROSS JOIN

Generate every possible combination of departments and office locations.

---

### ✅ SELF JOIN

Display employee pairs working in the same department while excluding self-pairs and duplicate pairs.

---

# 📊 Window Functions

### RANK()

Ranks employees based on salary from highest to lowest.

---

### DENSE_RANK()

Ranks employees by salary within each department without skipping ranks.

---

### Running Total

Calculates cumulative salary for each department using Window Functions.

---

# 📚 SQL Concepts Covered

## Data Retrieval

* SELECT
* DISTINCT
* AS

## Data Filtering

* WHERE
* Comparison Operators
* Logical Operators
* IS NULL
* UPDATE

## Sorting & Limiting

* ORDER BY
* LIMIT

## Aggregation

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

## Grouping

* GROUP BY
* HAVING

## Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* CROSS JOIN
* SELF JOIN

## Window Functions

* OVER()
* PARTITION BY
* RANK()
* DENSE_RANK()
* SUM() OVER()

---

# 📈 Business Insights Generated

* Identified employees earning above ₹50,000.
* Retrieved distinct salary values for salary analysis.
* Calculated department-wise salary expenditure.
* Identified departments with low employee count.
* Determined maximum salary by office location.
* Calculated average salary for Analyst roles.
* Ranked employees globally and department-wise based on salary.
* Generated cumulative salary reports for payroll analysis.
* Identified departments and locations without assigned employees.
* Retrieved employee collaboration pairs within the same department.

---

# 🎓 Learning Outcomes

This project strengthened my understanding of SQL querying and analytical reporting by applying real-world business scenarios to relational databases. It provided practical experience in filtering, sorting, grouping, aggregating, joining multiple tables, and using Window Functions for advanced analysis. These concepts are fundamental for Data Analyst, Business Intelligence, and Reporting roles.

---

# 🚀 Future Enhancements

* Create SQL Views for reusable business reports.
* Develop Stored Procedures for automated reporting.
* Implement Common Table Expressions (CTEs).
* Explore advanced Window Functions (`ROW_NUMBER()`, `LAG()`, `LEAD()`).
* Optimize queries using Indexes.
* Integrate the database with Power BI dashboards.

---

# 📸 Sample Relationship Diagram

```text
Departments (1)
       │
       │
       ▼
Employees (Many)
       ▲
       │
Locations (1)
```

---

# 👩‍💻 Author

**Dhivya Mohan**

**Role:** Aspiring Data Analyst

### Skills

* SQL
* MySQL
* Power BI
* Excel
* Python
* DAX
* Data Visualization
* Business Intelligence

### Domain

Data Analytics | Business Intelligence | US Healthcare Operations

---

## ⭐ If you found this project helpful, consider giving it a star!
