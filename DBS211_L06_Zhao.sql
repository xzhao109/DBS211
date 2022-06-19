-- ***********************
-- Name: Xiaoyue Zhao
-- ID:124899212
-- Date: Jun 19
-- Purpose: Lab 06 DBS211
-- ***********************


-- Q1 SOLUTION --
/*
1) Execute the SET TRANSACTION statement.
2) Execute the BEGIN_TRANSACTION statement.
3) Execute the COMMIT statement.
4) Execute the ROLLBACK statement.
 */
 

-- Q2 SOLUTION --
CREATE TABLE staffs AS
SELECT *
FROM dbs211_employees
WHERE 1 = 0;

SET AUTOCOMMIT OFF;
SET TRANSACTION READ WRITE;


-- Q3 SOLUTION --
INSERT ALL INTO staffs
VALUES (
        1001,
        'Patel',
        'Ralph',
        22333,
        'rpatel@mail.com',
        1,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1002,
        'Denis',
        'Betty',
        33444,
        'bdenis@mail.com',
        4,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1003,
        'Biri',
        'Ben',
        44555,
        'bbirir@mail.com',
        2,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1004,
        'Newman',
        'Chad',
        66777,
        'cnewman@mail.com',
        3,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1005,
        'Ropeburn',
        'Audrey',
        77888,
        'aropebur@mail.com',
        1,
        NULL,
        'Sales Rep'
    )
SELECT *
FROM DUAL;


-- Q4 SOLUTION --
SELECT *
FROM staffs;
SELECT COUNT(*)
FROM staffs;


-- Q5 SOLUTION --
ROLLBACK;

SELECT *
FROM staffs;
SELECT COUNT(*)
FROM staffs;


-- Q6 SOLUTION --
INSERT ALL INTO staffs
VALUES (
        1001,
        'Patel',
        'Ralph',
        22333,
        'rpatel@mail.com',
        1,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1002,
        'Denis',
        'Betty',
        33444,
        'bdenis@mail.com',
        4,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1003,
        'Biri',
        'Ben',
        44555,
        'bbirir@mail.com',
        2,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1004,
        'Newman',
        'Chad',
        66777,
        'cnewman@mail.com',
        3,
        NULL,
        'Sales Rep'
    ) INTO staffs
VALUES (
        1005,
        'Ropeburn',
        'Audrey',
        77888,
        'aropebur@mail.com',
        1,
        NULL,
        'Sales Rep'
    )
SELECT *
FROM DUAL;
COMMIT;

SELECT *
FROM staffs;


-- Q7 SOLUTION --
-- a)
UPDATE staffs
SET reportsto = 1004
WHERE employeenumber != 1004;

-- b)
UPDATE staffs
SET jobtitle = 'Sales Manager'
WHERE employeenumber = 1004;
COMMIT;


-- Q8 SOLUTION --
SELECT *
FROM staffs;


-- Q9 SOLUTION --
ROLLBACK;

SELECT *
FROM staffs
WHERE reportsto = 1004;

/*
a) 4 rows.
b) No.
c) ROLLBACK only works on DML statements (like INSERT, UPDATE, etc.).
*/


-- Q10 SOLUTION --
DELETE FROM staffs;
COMMIT;
--DROP TABLE staffs;



























