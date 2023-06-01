CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
select * from cats;
select name from cats;
select name, age from cats;
select name, breed from cats;
select * from cats where age = 4;
select breed,age from cats where age=4;
select name,breed from cats where age=4;

select cat_id from cats;
select name, breed from cats;
select name, age from cats where breed='Tabby';
select cat_id,age from cats where cat_id=age;

select name as kittyname from cats;

update cats set name='Jack' where cat_id=7;
update cats set breed='British Shorthair' where name='Ringo';
update cats set age=12 where breed='Maine Coon';

delete from cats where name='Egg';

delete from cats where age=4;
delete from cats where age=cat_id;
delete from cats;

