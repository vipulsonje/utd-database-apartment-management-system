-----------------------------------BASIC QUERIES----------------------------------

----Query 1: Select all columns and all rows from one table 
SELECT * FROM tenant;

----------------------------------------------------------------------------------

----Query 2: Select five columns and all rows from one table 
SELECT apt_id
	  ,apt_sqft
	  ,apt_bednum
	  ,apt_bathnum
	  ,apt_garageid
FROM apartment;

----------------------------------------------------------------------------------

----Query 3: Select all columns from all rows from one view
CREATE OR REPLACE VIEW 
staff_info AS
SELECT * FROM staff;
 
SELECT * FROM staff_info;

----------------------------------------------------------------------------------

----Query 4: Using a join on 2 tables, 
----select all columns and all rows from the tables without the use of a Cartesian product

SELECT * FROM staff s
INNER JOIN request r
	ON s.Stf_ID = r.Stf_ID

----------------------------------------------------------------------------------

----Query 5: Select and order data retrieved from one table 

SELECT * FROM REQUEST
ORDER BY Req_IssueDate desc

----------------------------------------------------------------------------------

----Query 6: Using a join on 3 tables, select 5 columns from the 3 tables. 
----Use syntax that would limit the output to 10 rows 

SELECT a.Apt_ID
	  ,a.Apt_Sqft
	  ,t.Ten_ID
	  ,t.Ten_FName
	  ,l.les_startDate
FROM apartment a
INNER JOIN lease l
	ON a.apt_id = l.apt_id
INNER JOIN tenant t
	ON t.ten_id = l.ten_id
LIMIT 10;

----------------------------------------------------------------------------------

----Query 7: Select distinct rows using joins on 3 tables

SELECT DISTINCT(s.Stf_ID)
			   ,a.apt_id
			   ,r.req_issuedate
			   ,r.req_type
			   ,r.req_status
			   ,r.req_finishdate
FROM apartment a
INNER JOIN request r
	ON a.apt_id = r.apt_id
INNER JOIN staff s
	ON s.Stf_ID = r.Stf_ID

----------------------------------------------------------------------------------

----Query 8: Use GROUP BY and HAVING in a select statement using one or more tables
----Find Apartments that have raised multiple maintenance requests

SELECT apartment.apt_id
      ,COUNT(request.req_status) AS pending_requests
FROM apartment
LEFT JOIN request 
	ON apartment.apt_id = request.apt_id
GROUP BY apartment.apt_id
HAVING COUNT(request.req_status) >1;

----------------------------------------------------------------------------------

----Query 9: Use IN clause to select data from one or more tables

SELECT * FROM PAYMENT p
where p.les_id IN 
(SELECT l.les_id FROM LEASE l
where l.les_StartDate >= '2023-01-01'
AND l.les_StartDate <= '2023-10-31')
AND p.Pay_Method = 'Check'

----------------------------------------------------------------------------------

----Query 10: Select length of one column from one table (use LENGTH function)

SELECT S.Stf_ID
	  ,S.Stf_FName
      ,LENGTH(S.Stf_FName)
FROM STAFF S

----------------------------------------------------------------------------------

----Query 11:Delete one record from one table. 
----Use select statements to demonstrate the table contents before and after the DELETE statement. 
----Make sure you use ROLLBACK afterwards so that the data will not be physically removed

SELECT * FROM PAYMENT P;

BEGIN;
DELETE FROM PAYMENT P
where P.les_ID = 1 
AND P.pay_date = '2022-07-01';
SELECT * FROM PAYMENT P
ROLLBACK;
END;

SELECT * FROM PAYMENT P

----------------------------------------------------------------------------------

----Query 12: Update one record from one table. 
----Use select statements to demonstrate the table contents before and after the UPDATE statement. 
----Make sure you use ROLLBACK afterwards so that the data will not be physically removed

SELECT * FROM STAFF S order by S.stf_id;

BEGIN;
UPDATE STAFF SET stf_role = 'Assistant Manager'
where stf_id = 2;
SELECT * FROM STAFF S order by S.stf_id;
ROLLBACK;
END;

SELECT * FROM STAFF S order by S.stf_id;


-----------------------------------ADVANCE QUERIES----------------------------------

----1. Calculate the total payments made by each tenant for the year 2023, including fines.
----Business Implication: This query helps in understanding the financial contributions of
----each tenant for the year 2023, including lease payments and fines.

SELECT tenant.ten_id
	  ,ten_fname
      ,ten_lname
      ,SUM(pay_amount + pay_fine) AS total_payments_2023
FROM tenant
LEFT JOIN lease 
	ON tenant.ten_id = lease.ten_id
LEFT JOIN payment 
	ON lease.les_id = payment.les_id
WHERE EXTRACT(YEAR FROM pay_date) = 2023
GROUP BY tenant.ten_id
ORDER BY total_payments_2023 DESC;

----------------------------------------------------------------------------------

----2. Find the staff member who has completed the most requests, including In-Progress and completed requests.
----Business Implication: This query helps identify the most productive staff member in handling service requests, which can be used for performance evaluation.

SELECT staff.stf_id
	  ,stf_fname
      ,stf_lname
      ,COUNT(request.req_issuedate) AS total_requests
FROM staff
LEFT JOIN request 
	ON staff.stf_id = request.stf_id
WHERE (request.req_status ILIKE ('Finished')
      	OR
      request.req_status ILIKE ('In-Progress'))
GROUP BY staff.stf_id
ORDER BY total_requests DESC
LIMIT 1;








