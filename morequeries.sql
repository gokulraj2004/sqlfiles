use gokulraj;
create table transaction21BAI1175(
t_id varchar(3),
book_id varchar(10),
member_id varchar(5),
issue_date date,
return_date date,
PRIMARY KEY(t_id)
);
create table books21BAI1175(
book_id varchar(10),
title varchar(80),
type char(3),
author varchar(20),
price int,
PRIMARY KEY(book_id)
);
CREATE TABLE member21BAI1175 (
    member_id VARCHAR(5),
    lname VARCHAR(15),
    fname VARCHAR(15),
    area VARCHAR(20),
    phone_no INT,
    PRIMARY KEY (member_id)
);
insert into books21BAI1175(book_id, title , type, author, price )values('b00001','the essential client/server survival guide','CSE','Robert Orgali',5000);
insert into books21BAI1175(book_id, title , type, author, price )values('b00002','data structures using c and c++','CSE','Aaron.M.Tenenbaum',1000);
insert into books21BAI1175(book_id, title , type, author, price )values('b00003','digital design','ECE','M Morris Mano',2500);
insert into books21BAI1175(book_id, title , type, author, price )values('b00004','the c odyssey usix - the open boundless c','CSE','Meeta Gandhi',7300);
insert into books21BAI1175(book_id, title , type, author, price )values('b00005','computer system architecture','IC','M Morris Mano',3500);
insert into books21BAI1175(book_id, title , type, author, price )values('b00006','an intoduction to distributed and parallel computing','IT','joel m crichlow',4200);
insert into books21BAI1175(book_id, title , type, author, price )values('b00007','type and learn c++ today','ECE','martin l rinehart',1500);
insert into books21BAI1175(book_id, title , type, author, price )values('b00008','pc buyers survival guide','IC','harald babiel',4560);
insert into books21BAI1175(book_id, title , type, author, price )values('b00009','digital electronics and microprocessors problems and solutions','ECE','r p jain',3500);
insert into books21BAI1175(book_id, title , type, author, price )values('b00010','easy to build electronic alarms','ECE','m c sharma',1900);
insert into books21BAI1175(book_id, title , type, author, price )values('b00011','unix network programming','CSE','w richard stevens',2200);
insert into books21BAI1175(book_id, title , type, author, price )values('b00012','c++ programming language','IT','bjarne stroustrup',3450);

insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t01','b00004','m01','22-06-19','25-08-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t02','b00003','m02','12-08-19','15-08-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t03','b00001','m02','15-08-19','18-08-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t04','b00006','m03','10-09-19','13-09-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t05','b00007','m04','05-08-19','08-08-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t06','b00002','m06','18-09-19','21-09-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t07','b00009','m05','07-07-19','10-07-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t08','b00009','m01','11-08-19','14-08-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t09','b00005','m03','06-07-19','09-07-19');
insert into transaction21BAI1175(t_id , book_id , member_id , issue_date , return_date)values ('t10','b00008','m06','03-09-19','06-09-19');

INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M01', 'GEORGE', 'MATHEW', 'MAS', 998877600);
INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M02', 'Sneha', 'Sawanth', 'CBE', 984326123);
INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M03', 'JEEVA', 'PRAMOD', 'DEL', 995675257);
INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M04', 'NEERAJ', 'BASU', 'HSR', 809337978);
INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M05', 'SREERAM', 'KUMAR', 'MYL', NULL);
INSERT INTO member21BAI1175(member_id, lname, fname, Area, Phone_no)VALUES ('M06', NULL, 'SRI', 'CBE', 973484635);

#1.Find out the names of all the members.
SELECT fname,lname from member21BAI1175;
#2. Print the entire member table.
SELECT * from member21BAI1175;
#3. Retrieve the list of fname and the area of all the members.
SELECT fname, area FROM member21BAI1175;
#4. List the various book types available from the book table without duplicates. 
select type from books21BAI1175;
#5. Find the names of all members having ’a’ as the second letter in their fnames.
SELECT * FROM member21BAI1175 WHERE fname LIKE '_a%';
#6. Find thelnamesof all members that begin with ’s‘ or ’j’. 
SELECT * FROM member21BAI1175 WHERE lname LIKE 's%' or 'j%';
#7. Find out the members who stay in an area whose second letter is ’B’.
SELECT * FROM member21BAI1175 WHERE area LIKE '_B%';
#8. Find the list of all members who stay in area ‘MYL’ or ‘CBE’ or ‘DEL’.
SELECT * FROM member21BAI1175 WHERE Area LIKE 'MYL' or 'CBE' or 'DEL';
#9. Print the list of members whose phonenumbers greaterthan the value 9800000000
select * from member21BAI1175 WHERE phone_no>980000000;
#10. Print the information from transaction table of members who have beenissued books in the monthof september.
select * from transaction21BAI1175 where issue_date like '___09%';
#11. Display the transaction table information for member_id ’M03‘and ’M04’.
select * from transaction21BAI1175 where member_id='m03' and member_id='m04';
#12. Find the books of type ’CSE' and ’ECE’.
select * from books21BAI1175 where type='CSE' and type='ECE';
#13. Find the books whose price is greater than 3500 and less than or equal to 5000.
select * from books21BAI1175 WHERE price>3500 and price <5000;
#14. Find the books that cost more than 5000 also find the new cost as original cost multipliedby 15.
#15. Rename the new column in the above query as new_price.
select *,price*15 as new_price from books21BAI1175 WHERE price>5000;
#16. List the books in sorted order of their titles. 
select * from books21BAI1175 order by title;
#17. Print the names and types of all the books except IC books.
select * from books21BAI1175 where type!='IC';
#18. Calculate the square root of the price of each book.
select book_id,title,sqrt(price) as new_price from books21BAI1175;
#l9. Divide the cost of book ’Digital Design” by difference between its price and 1000.
select title, price/(price-1000) as new_price from books21BAI1175 where title='Digital Design';
#20. List the names. areas and member_id of members without phone numbers. 
select fname,lname,area,member_id from member21bai1175;
#21. List the names of members without lname
select fname from member21bai1175;
#22. List the book_id. title, type of books whose author name begin with letter ’M’.
select book_id, title, type from books21bai1175 where author like 'M%';
#23. List the book_id and t_id of members having t_id less than ‘t05’ from the transaction table
select book_id,t_id from transaction21bai1175 where t_id<'t05';


#24.Count the total number of members. 
SELECT COUNT(MEMBER_ID) FROM member21BAI1175;
#25.Calculate the total price of all the books.
SELECT SUM(PRICE) FROM BOOKS21BAI1175;
#26.Calculate the average price of all the books
SELECT AVG(PRICE) FROM BOOKS21BAI1175;
#27.Determine the maximum and minimum book prices. Renamethe title as max_price and min_price respectively.
SELECT MAX(PRICE) AS MAX_PRICE,MIN(PRICE) AS MIN_PRICE FROM BOOKS21BAI1175;
#28.Count the number of books having price greater than or equal to I500.
SELECT count(PRICE) FROM BOOKS21BAI1175 WHERE PRICE>=1500;
#29.Print the information of transaction table in the following format for all records 
#A) The Transaction Id of Member Id. {member_id} is {t_id} and Book No is {book_id}.
SELECT CONCAT('The Transaction Id of Member Id ',member_id, 'is ', t_id,' Book No is ',BOOK_ID) from transaction21BAI1175;
#B) {member_id} has taken Book No. {book_id} on {issue__date} and will return on {return__date}.
SELECT CONCAT(member_id, 'has taken Book No. ', book_id,' on ',issue_date,'and will return on ',return_date) from transaction21BAI1175;

#30. Print the type and average price of each book.
SELECT TYPE , AVG(PRICE) FROM BOOKS21BAI1175 group by TYPE;
#31. Find the number of books in each type.
SELECT count(BOOK_ID),TYPE FROM BOOKS21BAI1175 GROUP BY TYPE;
#32. Count separately the number of books inthe ‘CSE’ and ‘IC’ types.
select type , count(*) as quantity from books21BAI1175 WHERE TYPE='CSE' OR TYPE='IC' GROUP BY TYPE;
#33. Calculate the average price for each type thathas a maximum price of 3500.
select type ,  AVG(PRICE) from books21BAI1175 where PRICE<3500 GROUP BY TYPE;
#34. Calculate the average price of all books where type is ’ECE’ or‘IT’ and price is greater than or equal to 1500.
select type ,  AVG(PRICE) from books21BAI1175 WHERE TYPE='ECE' OR TYPE='IT' AND PRICE>=1500 GROUP BY TYPE;
#35. Display transaction number and day on which members were issued books.
 SELECT t_id , dayname(issue_date) as issueday from transaction21BAI1175;
#36. Display the month(in alphabets) in which members are supposed to return the books.
SELECT t_id , monthname(return_date) as returnmonth from transaction21BAI1175;
#37. Display the issue date in the format ‘dd-month-yy’. For eg. 12-february-93. 
SELECT t_id , DATE_FORMAT(issue_date,"%d %M %Y") as returnmonth from transaction21BAI1175;
#38. Find the date, 15 days after the current date.
SELECT DATE_ADD(issue_date,INTERVAL 15 DAY) AS DateAdd from transaction21BAI1175;
#39. Find the number of days elapsed between the Current date and the return date of the book for all members
select t_id, truncate(sysdate)=truncate(return_date)*day() from transaction21BAI1175;

ALTER TABLE transaction21BAI1175
ADD FOREIGN KEY (member_id) REFERENCES member21BAI1175(member_id);
ALTER TABLE transaction21BAI1175
ADD FOREIGN KEY (book_id) REFERENCES books21BAI1175(book_id);
#40. Find out the book number which has been issued to ‘Jeeva’.
select lname,transaction21BAI1175.book_id
from member21BAI1175 left join transaction21BAI1175
on member21BAI1175.member_id=transaction21BAI1175.member_id
where lname='Jeeva';
#41. Find the names and book numbers of all the members who have been Issued a book.
select lname||fname,transaction21bai1175.book_id from member21bai1175 left join transaction21bai1175 on member21bai1175.member_id=transaction21bai1175.member_id;
#42. Select the title, member_id, book_id for all the books that are issued.
ALTER TABLE transaction21BAI1175
ADD FOREIGN KEY (book_id) REFERENCES books21BAI1175(book_id);
select title,transaction21bai1175.member_id,transaction21bai1175.book_id from books21bai1175 right join transaction21bai1175 on books21bai1175.book_id=transaction21bai1175.book_id;
#43. Find out the title and types of the books that have been issued to ’Neeraj’.
select member21bai1175.lname,title,type from transaction21bai1175 join books21bai1175 on transaction21bai1175.bookid=books21bai1175.bookid
join member21bai1175 on transaction21bai1175.member_id=member21bai1175.member_id where member21bai1175.lname='Neeraj';
#44. Find the names of customers who have been issued book of type"CSE’.
select books21bai1175.type, lname, fname
from transaction21bai1175 JOIN books21bai1175
on Transaction21bai1175.book_id=Books21bai1175.book_id JOIN member21bai1175
ON Transaction21bai1175.member_id-member21bai1175.member_id
where books21bai1175.type='CSE';
#45. Display the title, lname, fname for members having book number greater than or equal to B00007, in the followmg format : The book taken by {fname} {lname} is {title}.


