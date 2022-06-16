-- ***********************
-- Name: Xiaoyue Zhao
-- ID: 124899212
-- Date: 29 May
-- Purpose: Lab 03 DBS211 – Part 1
-- ***********************
SET AUTOCOMMIT ON;


CREATE TABLE employees AS
SELECT *
FROM dbs211_employees;
ALTER TABLE employees
ADD CONSTRAINT employees_pk PRIMARY KEY (employeenumber);
ALTER TABLE employees
ADD CONSTRAINT employees_fk FOREIGN KEY (REPORTSTO) REFERENCES employees (employeenumber);


-- Q1
INSERT INTO employees (
      employeenumber,
      lastname,
      firstname,
      extension,
      email,
      officecode,
      reportsto,
      jobtitle
   )
VALUES (
      1703,
      'Zhao',
      'Xiaoyue',
      'x32325',
      'xzhao109@myseneca.ca',
      4,
      1088,
      'Accountant'
   );


-- Q2
SELECT *
FROM employees
WHERE employeenumber = 1703;


-- Q3
UPDATE employees
SET jobtitle = 'Head Cashier'
WHERE employeenumber = 1703;


-- Q4
INSERT INTO employees (
      employeenumber,
      lastname,
      firstname,
      extension,
      email,
      officecode,
      reportsto,
      jobtitle
   )
VALUES (
      1704,
      'white',
      'Jully',
      'x33875',
      'woaisql@gmail.com',
      6,
      1703,
      'Cashier'
   );


-- Q5（Not removed successfully）
-- Error report - 
-- ORA-02292: integrity constraint (DBS211_222ZA40.EMPLOYEES_FK) violated - child record found)
DELETE FROM employees
WHERE employeenumber = 1703;


-- Q6
-- Delete fake employee
DELETE FROM employees
WHERE employeenumber = 1704;
-- Rerun the statement to remove myself
-- Removed successfully
DELETE FROM employees
WHERE employeenumber = 1703;


-- Q7
INSERT ALL INTO employees
VALUES (
      1703,
      'Zhao',
      'Xiaoyue',
      'x32325',
      'xzhao109@myseneca.ca',
      4,
      1088,
      'Accountant'
   ) INTO employees
VALUES (
      1704,
      'white',
      'Jully',
      'x33875',
      'woaisql@gmail.com',
      6,
      1088,
      'Cashier'
   )
SELECT *
FROM DUAL;


-- Q8
DELETE FROM employees
WHERE employeenumber = 1703
   OR employeenumber = 1704;
DROP TABLE employees;