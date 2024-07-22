# SQL Tasks - July 22, 2024

## Task Overview

Today, I worked on various SQL operations including database creation, table management, data insertion, and executing SQL commands. Below is a summary of the tasks completed:

### 1. **Database Creation**
   - Created a new database to store employee-related data.
   - Verified the database creation by listing available databases.

### 2. **Table Creation**
   - Created a table named `employee` with the following columns:
     - `EID`: Unique identifier for each employee (Auto Increment).
     - `FirstName`: Employee's first name.
     - `LastName`: Employee's last name.
     - `Age`: Employee's age.
     - `Salary`: Employee's salary.
     - `Location`: Employee's location.

### 3. **Inserting Data**
   - Inserted multiple records into the `employee` table with details such as names, ages, salaries, and locations.

### 4. **Executing SQL Commands**
   - **Select**: Retrieved and displayed all records from the `employee` table.
   - **Update**: Modified specific records in the table.
   - **Delete**: Removed records based on specified criteria.

## SQL Scripts

- `create_database.sql`: 
  ```sql
  CREATE DATABASE IF NOT EXISTS techforallwithpriya;
  USE techforallwithpriya;
