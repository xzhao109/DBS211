-- ***********************
-- Name: Xiaoyue Zhao
-- ID:124899212
-- Date: Jun 5
-- Purpose: Lab 04 DBS211
-- ***********************


-- Q1 SOLUTION --
SELECT c.customernumber AS "Customer Number",
   c.customername AS "Customer Name",
   c.city AS "City",
   c.creditlimit AS "Credit Limit",
   c.salesrepemployeenumber AS "Sales Advisor ID",
   e.firstname || '' || e.lastname AS "Sales Advisor Name"
FROM dbs211_customers c
   INNER JOIN dbs211_employees e ON c.salesrepemployeenumber = e.employeenumber
WHERE c.city IN (
      'Vancouver',
      'Paris',
      'NYC'
   )
ORDER BY c.city,
   c.customernumber;


-- Q2 SOLUTION --
SELECT e.employeenumber AS "Employee Number",
   e.firstname || ', ' || e.lastname AS "Employee Name",
   o.phone AS "Phone",
   e.extension AS "Extension",
   o.country AS "Country"
FROM dbs211_employees e
   INNER JOIN dbs211_offices o ON e.officecode = o.officecode
WHERE o.country IN ('Japan', 'UK')
ORDER BY e.employeenumber;


-- Q3 SOLUTION --
SELECT c.customernumber AS "Customer Number",
   c.customername AS "Customer Name",
   e.firstname || ' ' || e.lastname AS "Salesperson Name",
   e.email AS "Salesperson Email"
FROM dbs211_customers c
   INNER JOIN dbs211_employees e ON c.salesrepemployeenumber = e.employeenumber
WHERE c.customernumber IN (114, 119, 121)
ORDER BY c.customernumber;


-- Q4 SOLUTION --
SELECT p.productcode AS "product code",
   p.productname AS "product name",
   p.quantityinstock AS "quantity",
   p.buyprice AS "price"
FROM dbs211_products p
   LEFT JOIN dbs211_orderdetails o ON p.productcode = o.productcode
WHERE o.ordernumber IS NULL
ORDER BY p.productcode;


-- Q5 SOLUTION --
CREATE view customer_report AS
SELECT c.customernumber,
   c.customername,
   c.phone,
   c.city,
   o.ordernumber,
   to_char(orderdate, 'DD-MON-YY') AS "ORDERDATE",
   o.status
FROM dbs211_customers c
   INNER JOIN dbs211_orders o ON c.customernumber = o.customernumber
WHERE o.status = 'Cancelled';


-- Q6 SOLUTION --   
SELECT *
FROM customer_report
ORDER BY customernumber;


-- Q7 SOLUTION --
CREATE OR replace view customer_report AS
SELECT c.customernumber,
   c.customername,
   c.phone,
   c.city,
   o.ordernumber,
   to_char(orderdate, 'DD-MON-YY') AS "ORDERDATE",
   o.status
FROM dbs211_customers c
   LEFT JOIN dbs211_orders o ON c.customernumber = o.customernumber
WHERE o.status = 'Cancelled'
   OR (
      o.ordernumber IS NULL
      AND c.city IN ('Madrid', 'Berlin')
   );


-- Q8 SOLUTION --
SELECT *
FROM customer_report
ORDER BY city,
   customernumber;


-- Q9 SOLUTION --
SELECT customernumber,
   customername,
   city
FROM customer_report
WHERE city = 'Madrid'
   AND ordernumber IS NULL
ORDER BY customernumber;


-- Q10 SOLUTION --
DROP view customer_report;