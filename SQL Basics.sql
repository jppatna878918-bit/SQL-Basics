CREATE DATABASE company_db;

-- Q1. Create a New Database and  Table for Employees
use company_db;
CREATE TABLE employees(employees_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE
);
-- Q2. Insert Data into Employees Table
insert into employees(employees_id,first_name,last_name,department,salary,hire_date)
values
(101,'Amit','Sharma','HR',50000,'2020-01-15'),
(102,'Riya','Kapoor','Sales',75000,'2019-03-22'),
(103,'Raj','Mehata','IT',90000,'2018-07-11'),
(104,'Neha','Verma','IT',85000,'2021-09-01'),
(105,'Arjun','Singh','Finance',60000,'2022-02-10');

-- Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
select*from employees order by salary ASC;

-- Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)
select*from employees order by department asc,salary desc;


-- 5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
select*from employees where department='IT'order by hire_date desc;

-- Q6. Create and Populate a Sales Table
CREATE TABLE sales(seles_id int primary key,costomer_name varchar(50),amount int,sale_date date
);
insert into sales(seles_id,costomer_name,amount,sale_date)
 values
(1,'Aditi',1500,'2024-08-01'),
(2,'Rohan',2200,'2024-08-03'),
(3,'Aditi',3500,'2024-09-05'),
(4,'Meena',2700,'2024-09-15'),
(5,'Rohan',4500,'2024-09-25');
-- Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
select*from sales order by amount desc;

-- Q8. Show All Sales Made by Customer “Aditi”
select * from sale where customer_name ='Aditi';

-- Q9. What is the Difference Between a Primary Key and a Foreign Key?
-- > A PRIMERY KEY UNIQUELY IDENTIFIES EACH RECORD IN A TABLE ,WHILE A FOREIGN KEY CREATES A LINK BETWEEN
     TABLES BY REFERENCING A PRIMARY KEY IN ANOTHER TABLE ,ALLOWINGING DUPLICATE AND NULL VALUES TO ESTABLISH
     RELATIONSSHIPS AND ENSURE REFERENTIAL INTEGRITY.
     
-- Q10. What Are Constraints in SQL and Why Are They Used?
SQL constraints are rules enforced on data columns in a table, ensuring the accuracy, integrity,
 and reliability of the data they contain.
 Constraints are crucial for maintaining data integrity within a database.
  They prevent invalid data from being inserted or updated, 
Ensuring Accuracy: They guarantee that data adheres to predefined business rules.
Maintaining Consistency: They help maintain logical consistency across related tables.
Improving Reliability: By preventing bad data entries, they make the database more stable and reliable . 