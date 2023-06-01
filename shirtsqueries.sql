create database shirts_db;
use shirts_db;
create table shirts(
shirt_id  int primary key AUTO_INCREMENT,
article char(20),
color char(20),
shirt_size char(20),
last_worn char(20));
drop table shirts;
insert into shirts(article,color,shirt_size,last_worn) values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
SELECT * FROM SHIRTS;
insert into shirts(article,color,shirt_size,last_worn) values('polo shirt','purple','M',50);
#select article, color from shirts;
#select article,color,shirt_size,last_worn from shirts;
update shirts set shirt_size='L' where article='polo shirt';
update shirts set last_worn=0 where shirt_id=8;
update shirts set color='off-white',shirt_size='XS' where color='white';
delete from shirts where last_worn=200;
delete from shirts where article='tank top';
drop table shirts;


