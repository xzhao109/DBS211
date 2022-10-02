 -- ***********************
-- Name: Xiaoyue Zhao
-- ID: 124899212
-- Date: Sep 18
-- Purpose: Lab 01 
-- Course Code: DBS311
-- Section Code: ZAA
-- ***********************


-- Q1 SOLUTION --
SELECT
   to_char ((sysdate + 1), 'FMMonth DD"th of year" YYYY') AS "TOMORROW" 
FROM
   DUAL;
-- Advanced Option 
define tomorrow = sysdate + 1;
SELECT
   to_char ( & tomorrow, 'FMMonth DD"th of year" YYYY') AS "TOMORROW" 
FROM
   DUAL;
undefine tomorrow;


-- Q2 SOLUTION --
SELECT
   product_id,
   product_name,
   list_price,
   round(list_price * 1.02) AS "NEW PRICE" 
FROM
   products 
WHERE
   list_price > 85 
   AND list_price < 100 
   AND category_id = 5 
ORDER BY
   product_id;


-- Q3 SOLUTION --
SELECT
   first_name || ' ' || last_name || ' with employee ID ' || employee_id || ' works as ' || job_title || '.' AS "EMPLOYEE INFO"
FROM
   employees 
WHERE
   manager_id IS NULL 
ORDER BY
   employee_id;


-- Q4 SOLUTION --
SELECT
   last_name,
   hire_date,
   trunc(months_between(CURRENT_DATE, hire_date), 0) AS "MONTHS WORKED" 
FROM
   employees 
WHERE
   hire_date >= to_date('16-NOV-01', 'YY-MON-DD') 
ORDER BY
   hire_date,
   employee_id;
   

-- Q5 SOLUTION --
SELECT
   last_name,
   hire_date,
   to_char((next_day(add_months(hire_date, 3), 'Monday')), 'FMDAY"," Month" the" Ddsp "of year" YYYY') AS "REVIEW DAY" 
FROM
   employees 
WHERE
   hire_date < to_date('16-JAN-25', 'YY-MON-DD') 
ORDER BY
   "REVIEW DAY",
   last_name;
   
   
-- Q6 SOLUTION --
SELECT
   warehouse_id,
   warehouse_name,
   city,
   COALESCE(state, 'Unknown') AS "STATE" 
FROM
   warehouses s 
   INNER JOIN
      locations l 
      ON s.location_id = l.location_id
ORDER BY warehouse_id;

