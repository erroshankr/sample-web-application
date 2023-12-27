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

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

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
