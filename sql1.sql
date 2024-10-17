use jap67;
show tables;
CREATE TABLE employee(
id int PRIMARY KEY,
name varchar(50) NOT NULL,
salary int,
department varchar(50),
dob date );

INSERT INTO employee VALUES
(101,'Jack',2000,'HR','1997-05-19'),
(102,'Jack',NULL,'HR',NULL),
(103,'Mack',6000,'Developer','1997-03-10'),
(104,'Peter',4000,'Tester','1998-07-16'),
(105,'Tom',3000,'HR','1998-11-03'),
(106,'Leo',2500,'Developer','1997-10-10'),
(107,'Roger',5300,'Accounts','1997-06-17'),
(108,'Mike',2000,NULL,'1998-03-09'),
(109,'Paul',4800,'Developer','1998-12-28'),
(110,'Hannah',2000,'Accounts','1999-09-26');

-- Write a query to display all the records of employee Table-- 
select * from employee;

-- Write a query to display unique salary of employee table
select distinct salary,name from employee;

-- Write a query to display all data of name and dob column of employee table.--
 select name, dob from employee;
 
 -- Write a query to display Id , name and the annual salary with the
-- column name 'annual_salary' from the employee table.
select id, concat(name,"-" ,salary) as annual_salary from employee;

-- Write a query to display unique combination of salary and
-- department of the employee table
select distinct salary, department from employee;

-- Write a query to get id and display Name with salary in parentheses()
-- from the employee table and the resultant column name should be
-- emp_detail.
select id, concat(name,'(',salary,')') from employee;

drop table employee;

CREATE TABLE employees
(
emp_no INT NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
salary INT,
birth_date DATE NOT NULL,
gender ENUM ('M','F') NOT NULL,
joining_date DATE NOT NULL,
department VARCHAR(20),
PRIMARY KEY (emp_no)
);
desc employees;
INSERT INTO employees (emp_no, first_name, Last_name, salary, birth_date, gender, joining_date,
department)
VALUES (1001, 'James', 'Bond', 45300, '1998-01-19', 'M', '2020-11-29', 'Marketing'),
(1002, 'Robert', 'Lee', 69410, '1998-09-02', 'M', '2019-12-26', 'IT'),
(1003, 'Mary', 'Wood', 39518, '1997-11-07', 'F', '2019-09-12', 'Business Development'),
(1004, 'John', 'Cole', 36264, '1999-02-01', 'M', '2021-04-14', 'HR'),
(1005, 'Jennifer', 'Gill', 48941, '1996-06-05', 'F', '2019-06-28', 'Marketing'),
(1006, 'Michael', 'Watts', 23800, '1999-04-16', 'M', '2022-06-09', 'HR'),
(1007, 'David', 'Mills', 39400, '1998-04-26', 'M', '2021-10-17', 'IT'),
(1008, 'William', 'Hill', 26392, '1999-10-21', 'M', '2019-09-30', 'Business Development'),
(1009, 'Linda', 'Potter', 55231, '1998-01-24', 'F', '2021-08-07', 'Finance'),
(1010, 'Richard', 'Martin', 25600, '1996-08-07', 'M', '2021-03-23', 'IT'),
(1011, 'Susan', 'Hall', 54152, '1999-12-27', 'F', '2020-08-07', 'Finance'),
(1012, 'Joseph', 'Turner', 60556, '1997-05-13', 'M', '2019-09-02', 'Marketing'),
(1013, 'Mary', 'Gill', 58246, '1999-01-21', 'F', '2021-04-30', 'Business Development'),
(1014, 'Thomas', 'Ryan', 23676, '1996-10-12', 'M', '2022-03-02', 'IT'),
(1015, 'Charles', 'Williams', 57226, '2000-01-29', 'M', '2019-11-05', 'HR'),
(1016, 'Jessica', 'Clark', NULL, '2000-01-25', 'F', '2020-01-24', 'IT'),
(1017, 'Nancy', 'Parker', 66900, '1996-10-24', 'F', '2022-01-09', 'Finance'),
(1018, 'Betty', 'Barker', 35288, '1998-11-13', 'F', '2019-12-26', 'HR'),
(1019, 'Christopher', 'Gibson', 59341, '1998-04-23', 'M', '2019-05-02', 'Marketing'),
(1020, 'Daniel', 'Elliott', 44012, '1999-01-21', 'M', '2023-01-08', 'IT'),
(1021, 'David', 'Mills', NULL, '1998-01-24', 'M', '2019-12-26', 'IT'),
(1022, 'Sarah', 'Harrison', 44692, '1996-03-20', 'F', '2020-05-03', 'Finance'),
(1023, 'Matthew', 'Hill', 41365, '1998-05-16', 'M', '2019-05-23', 'IT'),
(1024, 'Anthony', 'Miller', 56794, '1996-06-30', 'M', '2019-02-28', 'Business Development'),
(1025, 'Mark', 'Wood', 65120, '1998-10-29', 'M', '2020-07-30', 'Business Development'),
(1026, 'Elizabeth', 'Walker', 47030, '1998-08-11', 'F', '2021-06-18', NULL),
(1027, 'Barbara', 'Anderson', NULL, '1999-12-27', 'F', '2021-03-14', 'HR'),
(1028, 'Jessica', 'Clark', 63836, '1998-01-24', 'F', '2021-05-23', 'IT'),
(1029, 'Nancy', 'Cole', 63669, '2000-01-26', 'F', '2019-12-26', 'Finance'),
(1030, 'Joe', 'Brooks', 44000, '1999-08-05', 'M', '2021-03-09', 'Business Development');


-- Write a query to display all the records of the employee who either
-- belong to ‘HR’ department or ‘Marketing’ department
select * from employees where department='HR' or department='Marketing';

-- Write a query to get the emp_no, first_name and salary of the
-- employee whose emp_no is more than 1010 and salary is also more than 40000.
select emp_no, first_name, salary from employees where emp_no>1010 and salary>40000;

-- Write a query to display all the records of the employee whose
-- gender is Female and they don’t belong to ‘IT’ department.
select * from employees where gender='F'and not department='IT';

-- Write a query to get emp_no, department, salary and joining_date of
-- the employee who either joined the company after 1 April 2020 or
-- who has salary below 33000
select emp_no, department, salary, joining_date from employees where joining_date>'2020-04-1'or salary<33000;



-- Write a query to get all the records of the employee whose gender is
-- Male and their department should either be ‘Business Development’
-- or ‘Marketing’ or ‘Finance’.
select * from employees where gender ='M' and department in('Business Development','Marketing','Finance');

-- Write a query to get emp_no, first_name and birth_date of the
-- employee whose emp_no is below 1020 and birth_date should not
-- be more than 9 March 1999.
select emp_no, first_name, birth_date from employees where emp_no<1020 and birth_date<'1999-03-09';

-- Write a query to display all the records of the employee whose first
-- name is ‘David’ or ‘Mary’ and last name should not be ‘Gill’
select *from employees
where first_name in('David','Mary') and last_name<>'Gill';

select * from employees where emp_no between 1001 and 1020;

select* from employees;
select  department,count(*) from employees
group by department;
select emp_no, first_name,(2024-10-12)-birth_date as age from employees
where birth_date-2024-10-12>30;
select count(*) from employees;

select * from employees where from_days(birth_date)> 20;

SELECT * 
FROM employees 
WHERE YEAR(CURDATE()) - YEAR(birth_date) > 25;

-- SQL Practice Questions – GROUP BY 

-- Find the total salary expenditure categorized by gender from
-- employee table
select  gender, sum(salary)as "salary expenditure" from employees group by gender;

-- 2) Retrieve the average salary for each department as avg_salary from
-- the employee table and display the results ascending order of the average salary.
select department , avg(salary) as 'average salary' from employees group by department order by avg(salary);

-- 3) Find the minimum salary in each department as min_salary whose
-- department is not null from the employee table?
select department, min(salary) as min_salary from employees where department is not null group by department;

-- 4) Find the average salary as average_salary and maximum salary as
-- max_salary for each department from the employee table.
select department, avg(salary) as average_salary, max(salary) as max_salary from employees
group by department;

-- 5) Determine the number of employees as total_employees in each
-- department, sorted in descending order of the count from the employee table.
select department, count(*) from employees group by department order by count(*) desc;

-- SQL Practice Questions – HAVING Clause

-- 1) Write a SQL query to count the number of duplicate first name as
-- duplicate_count in the employee table.
select first_name, count(*)  asduplicate_count from employees group by first_name having count(*)>1;

-- 2) Find the departments with more than 5 employees as
-- total_employees from the employee table.
select department, count(*) as total_employees from employees group by department having total_employees >5;

-- 3) Determine the department with an average salary greater than
-- 50000 as average_salary from the employee table.
select department , avg(salary) as average_salary from employees group by department having average_salary >50000;

-- 4) Determine the department with at least 3 employees earning a salary
-- of 30000 or more total_employees from as the employee table.
select department , count(*) as total_employees from employees where salary>=30000 group by department having count(*)>3;	

-- 5) Find the departments with a maximum salary greater than 60000 as
-- max_salary from the employee table.
select department, max(salary) as max_salary from employees group by department having max(salary)>60000;

-- 6) Find the department where the highest salary (as highest_salary) is
-- at least twice the lowest salary (as lowest_salary) in the employees table.
select department , max(salary) as highest_salary , min(salary) as lowest_salary from employees 
group by department having highest_salary >= 2*(lowest_salary);

-- 7) Determine the department with at least 5 employees (as
-- total_employees) where the total salary expense (as
-- total_salary_expense ) is greater than 100000 in the employee table.
select department , count(*) as total_employees, sum(salary) as total_salary_expense from employees
group by department having count(*)>=5 and  total_salary_expense> 100000;

-- 8) Determine the department where the average salary (as
-- average_salary) is within the range of 20000 to 50000 (inclusive) in the employee table.
select department, avg(salary) as average_salary from employees group by department having avg(salary) between 20000 and 50000;

-- 9) Determine the departments with more than 4 employees (as
-- total_employees) where the difference between the maximum and
-- minimum salary is greater than 25000 (salary_difference) from the employee table.
select department , count(*) as total_employees ,max(salary)-min(salary) as salary_difference from employees
group by department having count(*)>4 and salary_difference > 25000;

-- Questions-Inner & Natural Join

-- 1) Write SQL query to retrieve the product ID, product name, and vendor name from the "Products" table 
-- and "Vendors" table, sorted in ascending order by product ID?
select prod_id, prod_name, vend_name from Products inner join vendors on Products.vend_id = vendors.vend_id order by prod_id;

-- 2) Write SQL query to retrieve the product ID, product name, vendor
-- name, and vendor country for products sold by vendors in the USA, sorted by product ID?
select prod_id, prod_name, vend_name, vend_country from products inner join vendors on products.vend_id = vendors.vend_id 
where vend_country ='USA' order by prod_id;

-- 3) Write SQL query to retrieve the product ID, product name, vendor name, and product price from the "Products" table, joined with the
-- "Vendors" table, where the product price is less than 5, and the results are sorted by the product ID? (Use Natural Join)
select prod_id, prod_name, vend_name, prod_price from products inner join vendors on products.vend_id = vendors.vend_id
where prod_price<5 order by prod_id;

SELECT prod_id,prod_name,vend_name ,prod_price
FROM Products NATURAL JOIN vendors
WHERE prod_price < 5
ORDER BY prod_id;

select prod_id, prod_name, vend_name, prod_price from products, vendors
where products.vend_id= vendors.vend_id and prod_price<5 order by prod_id;

-- 4) Write SQL query to retrieve the product ID, vendor ID, and vendor
-- city for all products, sorted by the vendor ID?
select prod_id, p.vend_id, vend_city from products p inner join vendors v
on p.vend_id = v.vend_id
order by p.vend_id;

-- Write SQL query to retrieve vendor name and calculates the total
-- amount of products sold by each vendor as “total_amount”. Sorts the
-- results in ascending order based on the total amount?
select vend_name, sum(prod_price) as total_amount from products inner join vendors
on products.vend_id = vendors.vend_id group by vend_name order by total_amount;

-- 6) Write SQL query to retrieve vendor name and calculate total amount
-- including 5% GST for each vendor's products as
-- “total_amount_GST_5”? Can you provide the result in ascending
-- order based on the total amount?
select vend_name, sum(prod_price +(prod_price*(0.05))) 
 as total_amount_GST_5 from products inner join vendors 
on products.vend_id = vendors.vend_id group by vend_name order by sum(prod_price);

-- 7) Write SQL query to retrieve the product ID, vendor ID, product name,
-- vendor name, and product price from the "Products" table, joined
-- with the "vendors" table, where the vendor ID ends with '01' and the
-- product price is greater than 4?
select prod_id, p.vend_id, prod_name, vend_name, prod_price from products p inner join vendors
on p.vend_id = vendors.vend_id where p.vend_id like '%01' and prod_price>4;

