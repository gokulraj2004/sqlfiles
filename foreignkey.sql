#foreign key
use gokulraj;
show tables;
create table customers(
id int PRIMARY KEY AUTO_INCREMENT,
FIRSTNAME VARCHAR(20),
LASTNAME VARCHAR(20),
EMAIL varchar(20));

CREATE TABLE ORDERS(
ID INT PRIMARY KEY auto_increment,
ORDER_DATE DATE,
AMOUNT decimal(5,2),
CUSTOMER_ID int,
foreign key(CUSTOMER_ID) REFERENCES customers(ID) ON DELETE cascade);

INSERT INTO customers (firstname, lastname, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
select * from orders;
select * from customers;

insert into orders(order_date,amount, customer_id) values('2018-10-23',56,23);

SELECT * FROM ORDERS,CUSTOMERS;

SELECT * FROM CUSTOMERS INNER JOIN ORDERS ON CUSTOMERS.ID=ORDERS.ID;

SELECT FIRSTNAME,LASTNAME, EMAIL, ORDER_DATE, AMOUNT FROM CUSTOMERS 
INNER JOIN ORDERS ON 
CUSTOMERS.ID=ORDERS.ID;

SELECT firstname, lastname, SUM(amount) AS total FROM customers JOIN orders ON orders.customer_id = customers.id GROUP BY firstname , lastname ORDER BY total;
#LEFT JOIN
SELECT concat(firstname," ",lastname) as fullname, AMOUNT AS TOTAL, order_date from customers left join orders on orders.customer_id= customers.id;
#left join with group by
select concat(firstname," ",lastname) as fullname, ifnull(sum(amount),0) as total from customers 
left join orders on orders.customer_id=customers.id	group by fullname;
#right joins
#It will only show the null values present in left table but in our example it is not possible as we took customers and orders table.
#there might be person without orders but there cannot be an order without a customers so we manually insert a null value in the table.
INSERT INTO orders (order_date, amount)
VALUES ('2023-12-8', 99.99);
select firstname,lastname,amount, order_date from customers right join orders on orders.customer_id=customers.id;
#It is not possible to delete a row when we use foriegn key constraint in out table so to make it we use "ON DELETE CASCADE"
DROP TABLE ORDERS;
DROP TABLE CUSTOMERS;
DELETE FROM CUSTOMERS WHERE LASTNAME='GEORGE';

SELECT FIRSTNAME,LASTNAME,AMOUNT FROM CUSTOMERS JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID WHERE AMOUNT=800.67;

#JOINS EXCERSISES
CREATE TABLE STUDENTS(
	ID INT PRIMARY KEY auto_increment,
    FIRST_NAME VARCHAR(20));
    
CREATE TABLE PAPERS(
	TITLE VARCHAR(30),
    GRADE VARCHAR(10),
    STUDENT_ID INT,
    FOREIGN KEY(STUDENT_ID) REFERENCES STUDENTS(ID) ON DELETE CASCADE);
DROP TABLE PAPERS;
DROP TABLE students;

INSERT INTO STUDENTS(FIRST_NAME) VALUES ('Caleb'),('Samantha'),('Raj'),('Carlos'),('Lisa');

insert into papers(student_id,title,grade) values 
(1,'My First Book Report ',60),
(1,'My Second Book Report ',75),
(2,'Russian lit through the Ages',94),
(2,'De Montaigne and The Art ',98),
(4,'Borges and Magical Realism',89);

select * from students;
select * from papers;
#Q1
select first_name,title, grade from students join papers on papers.student_id=students.id order by grade desc;
#Q2
select first_name,title, grade from students left join papers on papers.student_id=students.id;
#Q3
select first_name,ifnull(title,'MISSING') as title , ifnull(grade,0) as grade from students left join papers on papers.student_id=students.id;
#Q4
select first_name, ifnull(avg(grade),0) from students left join papers on papers.student_id=students.id group by first_name order by avg(grade) desc;
#Q5
select first_name, ifnull(avg(grade),0), 
CASE 
	WHEN avg(GRADE)>75 THEN 'PASSING'
    ELSE	'FAILING'
    END AS PASSING_STATUS
 from students 
left join papers on 
			papers.student_id=students.id 
			group by first_name 
			order by avg(grade) desc;