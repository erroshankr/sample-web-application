SELECT * from student_details;
-- transaction

Start transaction;
UPDATE student_details SET stud_name='Rohit' where studid=902;
UPDATE student_details SET stud_name='REKHA' where studid=953;
UPDATE student_details SET mobile_num=1234567890 where gender='MALE';
UPDATE student_details SET stud_name='Rohit' where studid=902;
UPDATE student_details SET stud_name='REKHA' where studid=953;
UPDATE student_details SET mobile_num=1234567890 where gender='MALE';
UPDATE student_details SET stud_name='Rohit' where studid=902;
UPDATE student_details SET stud_name='REKHA' where studid=953;
UPDATE student_details SET mobile_num=1234567890 where gender='MALE';
commit;

UPDATE student_details SET stud_name='Rohit' where studid=902;


rollback;

SELECT stud_name,emailid from student_details where gender='FEMALE';

SELECT distinct stud_name from student_details;
SELECT count(*) from student_details;

UPDATE student_details SET stud_name='Rockstar' where studid=954;
SELECT count(*) from student_details where gender='MALE';

SELECT count(distinct studid) from student_details where gender='MALE';
SELECT stud_name from student_details where gender='MALE' AND dob > '2023-09-15';

SELECT * from student_details where gender='FEMALE' AND dob >= '2023-09-15';
SELECT * from student_details where gender='MALE' AND dob >= '2023-09-15' and  dob <= '2023-12-01';
SELECT * from student_details where gender='FEMALE' and dob between '2023-09-15' and '2023-12-01';
SELECT * from student_details where gender='MALE' and dob not between '2023-09-15' and '2023-12-01';




SELECT current_timestamp() from dual;

SELECT * from student_details where mobile_num like '3%';
SELECT * from student_details where stud_name like '%ar';

SELECT * from student_details where stud_name like 'R%ar';
SELECT * from student_details where stud_name like 'R____%';
SELECT * from student_details where emailid like '%fw%';

SELECT * from student_details where stud_name not in ('Rekha','Roshan','Rakesh') AND emailid like '%fw%';

SELECT * from student_details order by mobile_num asc;
SELECT * from student_details order by mobile_num desc;

SELECT * from student_details order by stud_name desc;
SELECT * from student_details where stud_name like 'R____%' order by stud_name asc;

desc student_details;

Alter table student_details modify mobile_num bigint;

-- drop & truncate
drop table student_details;
truncate table student_details;
DELETE from student_details;


CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

CREATE TABLE ORDERS (
   OID INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL (18, 2)
);

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );



INSERT INTO ORDERS VALUES
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00);

SELECT MAX(SALARY) FROM CUSTOMERS;
SELECT AVG(ID) FROM CUSTOMERS;
SELECT AVG(ADDRESS) FROM CUSTOMERS;

SELECT NAME,ID FROM CUSTOMERS;

SELECT * FROM CUSTOMERS ORDER BY SALARY DESC;
SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE '%_____';
SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE '_____%';
SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE '%_____%';
SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE '%_____e';



SELECT MAX(SALARY) from CUSTOMERS WHERE ADDRESS LIKE '%_______';

SELECT * FROM CUSTOMERS ORDER BY SALARY DESC LIMIT 2;

SELECT * FROM CUSTOMERS WHERE SALARY IN (SELECT MAX(SALARY) FROM CUSTOMERS);
SELECT * FROM CUSTOMERS WHERE SALARY IN (10000);
SELECT MAX(SALARY) FROM CUSTOMERS;

SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMERS WHERE SALARY IN (SELECT MAX(SALARY) FROM CUSTOMERS WHERE ADDRESS IN (SELECT ADDRESS FROM CUSTOMERS WHERE ADDRESS LIKE '%_______'));
SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE '%_______' ORDER BY SALARY DESC limit 1;


SELECT
 CASE
   WHEN condition THEN RESULT
   WHEN condition THEN RESULT
 END
FROM TABLE_NAME


-- INNER JOIN : COMMON DATA --
-- LEFT JOIN : LEFT TABLE DATA INCLUDING INNER JOIN --
-- RIGHT JOIN : RIGHT TABLE DATA INCLUDING INNER JOIN --
-- CROSS JOIN : CARTESIAN PRODUCT --
-- FULL JOIN : MYSQL Does not support, UNION is used: RIGHT JOIN+ LEFT JOIN --
-- SELF JOIN : CARTESIAN PRODUCT of SAME TABLE -- REQUIRES ONLY ONE TABLE --

SELECT * FROM test.student_details;
delete from student_details where studid=755;
commit;

desc student_details;

SELECT * from bank.accounts;

SELECT * from student_details;
select * from accounts;
select * from admin;
select * from students;
delete from student_details where studid=1003;

delete from student_details;
truncate table student_details;

CREATE TABLE ORDERS (
   OID INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL (18, 2)
);

INSERT INTO ORDERS VALUES
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00),
(108, '2008-05-20 00:00:00', 14, 2060.00);


INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

SELECT * from CUSTOMERS;
SELECT * from ORDERS;

UPDATE ORDERS SET AMOUNT = 1570 WHERE OID=101;

-- Write query to find all orders created by kaushik --
SELECT * from ORDERS JOIN CUSTOMERS ON ORDERS.CUSTOMER_ID = CUSTOMERS.ID where CUSTOMERS.NAME='kaushik';

-- write query to find all columns of customers who have placed order 100,103--
SELECT * from CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.OID IN (100,103);
SELECT * from CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;

-- write query to find customer who has placed order of maximum value--
SELECT MAX(AMOUNT) from ORDERS;
SELECT * FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT = 3000;

SELECT * FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT IN (SELECT MAX(AMOUNT) from ORDERS);
SELECT * FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT = (SELECT MAX(AMOUNT) from ORDERS);

-- WRITE query to find all customers who have placed orders of value more than avg order value--
SELECT * FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT > (SELECT AVG(AMOUNT) FROM ORDERS);

-- write query to find name of customers & their respective order id  who have placed orders of value more than avg order value --
SELECT CUSTOMERS.NAME,ORDERS.OID FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT > (SELECT AVG(AMOUNT) FROM ORDERS);
SELECT NAME,ORDERS.OID from CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT > (SELECT AVG(AMOUNT) FROM ORDERS);
SELECT CUSTOMERS.NAME,ORDERS.OID from CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT > (SELECT AVG(AMOUNT) FROM ORDERS);

--  --
SELECT * FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE ORDERS.AMOUNT=2060;

UPDATE ORDERS SET AMOUNT = 2070 WHERE CUSTOMER_ID = 4;

SELECT * FROM CUSTOMERS CROSS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT * FROM CUSTOMERS INNER JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;

SELECT * from ORDERS;

SELECT OID from ORDERS a JOIN ORDERS b WHERE a.oid=b.oid;