-- ***********************
-- Name: Xiaoyue Zhao
-- ID: 124899212
-- Date: 3 Jun
-- Purpose: Lab 03 DBS211 – Part 1
-- ***********************


SET AUTOCOMMIT ON;


-- Q1
SELECT customernumber AS "Customer Number",
   customername AS "Customer Name",
   contactfirstname || ' ' || contactlastname AS "Contact Name",
   phone AS "Phone Number"
FROM dbs211_customers
WHERE city = 'Madrid'
ORDER BY customernumber DESC;


-- Q2
SELECT DISTINCT customernumber
FROM dbs211_payments
ORDER BY customernumber
FETCH first 10 ROWS ONLY;


-- Q3
SELECT customernumber,
   checknumber,
   to_char(paymentdate, 'DD-MON-YY') AS "PAYMENTDATE",
   amount
FROM dbs211_payments
WHERE amount > 100000
   AND paymentdate NOT BETWEEN '03-01-01' AND '03-12-31'
ORDER BY amount DESC;


-- Q4
SELECT ordernumber,
   to_char(orderdate, 'DD-MON-YY') AS "ORDERDATE",
   status,
   customernumber
FROM dbs211_orders
WHERE status = 'In Process'
   OR status = 'On Hold'
ORDER BY to_date(orderdate, 'DD-MON-YY');


-- Q5
SELECT *
FROM (
      SELECT productcode,
         productname,
         buyprice,
         msrp,
         (msrp - buyprice) AS "MAKEUP",
         round(((msrp - buyprice) / buyprice) * 100, 1) AS "PERCMAKEUP"
      FROM dbs211_products
   ) NEW
WHERE NEW.percmakeup > 140
ORDER BY NEW.percmakeup;


-- Q6
SELECT customernumber,
   customername,
   phone
FROM dbs211_customers
WHERE (
      customername LIKE 'C%'
      OR customername LIKE 'c%'
   )
   AND customername LIKE '%Co.'
ORDER BY customernumber;