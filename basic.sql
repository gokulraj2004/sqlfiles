create database gokulraj;
show databases;
use gokulraj;
SELECT database();
CREATE TABLE TWEETS(
USERNAME CHAR(15),
TWEET_CONTENT char(140),
NO_OF_FAV int);
SHOW columns FROM TWEETS;
DESC TWEETS;
CREATE TABLE PASTRIES(
NAME char(50), 
QUANTITY INT);
DROP TABLE PASTRIES;
CREATE TABLE PEOPLE623(
FIRST_NAME CHAR(20) NOT NULL DEFAULT 'UNNAMED',
LAST_NAME CHAR(20),
AGE INT);
INSERT INTO PEOPLE623(FIRST_NAME,LAST_NAME,AGE) VALUES('','BELCHER',45),('PHILLIP','FROND',38),('CALVIN','FISCHOEDER',70);
SELECT * FROM PEOPLE623;
show tables;
drop table cats42;