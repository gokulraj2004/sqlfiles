use gokulraj;
create table peoplee(
name varchar(40),
birthdate date,
birthtime time,
birthdt datetime);
 
insert into peoplee(name,birthdate,birthtime,birthdt) values('Elcot','2000-12-23','05:23:45','2000-12-23 05:23:45');
insert into peoplee(name,birthdate,birthtime,birthdt) values('Rohit','2003-02-15','05','2000-12-23 03');
insert into peoplee(name,birthdate,birthtime,birthdt) values('Rohit',curdate(),curtime(),now());

select * from peoplee;

select curdate();
select curtime();
select now();

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM peoplee;
 
SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM peoplee;

SELECT 
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime)
FROM peoplee;
 
SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM peoplee;


SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM peoplee;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM peoplee;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM peoplee;

#date math
select birthdate from peoplee;
select curdate() from peoplee;
select birthdate,datediff(curdate(),birthdate) from peoplee;
select date_add(curdate(), INTERVAL 12 YEAR);
select DATE_SUB(curdate(),INTERVAL 3 MONTH);
SELECT CURTIME();
select TIMEDIFF(CURTIME(),'7:00:00');
SELECT addtime(CURTIME(),"7:00:00");
select NAME,BIRTHDATE,year(DATE_ADD(BIRTHDATE,INTERVAL 21 YEAR)) FROM PEOPLEE;
select NAME,BIRTHDATE,year(BIRTHDATE+INTERVAL 21 YEAR) FROM PEOPLEE;
select NAME,BIRTHDATE,year(now()+INTERVAL 21 YEAR) FROM PEOPLEE;

CREATE TABLE CAPTIONS1(
CAPTION varchar(150),
CAPTINTIME TIMESTAMP DEFAULT current_timestamp,
UP_CAPTIONTXT timestamp ON UPDATE current_timestamp);

INSERT INTO CAPTIONS1(CAPTION) VALUES('I  LOVE LIFE');
insert INTO CAPTIONS1(CAPTION,CAPTINTIME) VALUES('I DONT KNOW','2023-01-27 07:53:25');

SELECT * FROM CAPTIONS1;
UPDATE CAPTIONS1 SET CAPTION = 'I DON !!! LOVE MY LIFE' WHERE CAPTINTIME='2023-01-27 07:53:25';

SELECT * FROM CAPTIONS1;
# char is best for fixed data and only requires less memory for eg in char it will type the remaining characters with white spaces.
-- What's a good use case for CHAR?
 
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.



-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

#EXCERCISES
SELECT CURTIME();
SELECT CURDATE();
SELECT NOW(), DAYNAME(NOW());
SELECT NOW(),DATE_FORMAT(NOW(),'%d/%m/%y');

select now(),date_format(now(),'%M %D at %h:%m');

create table tweets2(
tweettxt varchar(180),
username varchar(100),
time timestamp default current_timestamp);
insert into tweets2(tweettxt,username) values('ILOVEYOU','jkl');
insert into tweets2(tweettxt,username) values('ILOVfdfaEYOU','afdfjkl');
select * from tweets2;

CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);
 
CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);

INSERT INTO PALINDROMES VALUES('RACECAR');
INSERT INTO PALINDROMES VALUES('RACE');

CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);
 
CREATE TABLE palindromes2 (
  word VARCHAR(100),
  CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);
CREATE TABLE COMPANIES(EMPLOYEE_ID INT);
ALTER TABLE companies 
ADD COLUMN phone VARCHAR(15);
 
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

SELECT * FROM COMPANIES;

#ALTER TABLE companies DROP COLUMN phone;
ALTER TABLE COMPANIES
DROP COLUMN EMPLOYEE_COUNT;

RENAME TABLE companies to suppliers;
ALTER TABLE suppliers RENAME TO companies;
ALTER TABLE companies
RENAME COLUMN EMPLOYEE_ID TO company_EMPID;

