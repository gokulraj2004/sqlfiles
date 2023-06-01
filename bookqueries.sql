use gokulraj;
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
select * from books;
select concat('h','e','l','l','o');
select concat(author_fname,' ',author_lname) as full_name from books;
select concat_ws('-',title,author_fname,author_lname) as book_title_authorname from books;
select substring('hello world',1,9);
select substring('hello world',1,5);
select substring('hello world',1,3);
select substr(title,1,15) as short_title from books;
select concat(substr(author_fname,1,1),'.',substr(author_lname,1,1),'.',author_fname,author_lname) from books;
select replace(title,' ','-') as formatted_titles from books;
select upper(title) from books;
select lower(title) from books;
select concat(title,' ',reverse(title)) as title_plus_reversedtitle from books;
select title,char_length(title) from books;
SELECT INSERT('Hello Bobby', 6, 0, 'There');
SELECT RIGHT('omghahalol!', 4);
SELECT LEFT('omghahalol!', 3);
SELECT REPEAT('oo', 4);
SELECT TRIM('  pickle  ');
select trim(leading '.' from '.....pickle');
select trim(trailing '.' from '.....pickle.....');
select upper(reverse('Why does my cat look at me with suck hatred?'));
#i like cats
#ans - i-like-cats
select replace(title,' ','->') from books;
select author_lname,reverse(author_lname) from books;
select upper(concat(author_fname,' ',author_lname)) as full_name_in_caps from books;
select concat(title,' was released in',released_year) as blurb from books;
select title,char_length(title) from books;
select title,length(title) from books;
select concat(substr(title,1,10),'...') as short_title,concat(author_lname,',',author_fname) as author,concat(stock_quantity,' in stock') from books;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
select distinct author_fname,author_lname from books;
select distinct concat(author_fname," ",author_lname) as distinct_fullname from books;
select * from books order by author_fname desc;
select book_id,title,released_year from books order by book_id;
select book_id, title, released_year from books order by 1,3;
select Concat(author_fname," ",author_lname) as author_full from books order by author_full;
select book_id,title, released_year from books order by book_id limit 5;
select book_id,title, released_year from books order by book_id limit 0,5;
select book_id,title, released_year from books order by book_id limit 3,5;
select book_id,title, released_year from books order by book_id limit 3,10000; #only 20 rows will be printed
SELECT title, author_fname, author_lname, pages 
FROM books
WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname, author_lname, pages 
FROM books
WHERE title LIKE '%:%';
 
SELECT * FROM books
WHERE author_fname LIKE '____';
 
SELECT * FROM books
WHERE author_fname LIKE '_a_';

select * from books where title like '%\%%';
select * from books where title like '%\_%';


#excersises
select title from books where title like '%Stories%';
select title,pages from books order by pages desc limit 1;
select CONCAT(title,'-',released_year) as summary from books order by released_year desc limit 3;
select title,author_lname from books where author_lname like "%\ %"; #escape 
select title,released_year,stock_quantity from books order by stock_quantity limit 3;
select title,author_lname from books order by author_lname,title;
select concat(("MY FAVOURITE AUTHOR IS "),' ',author_fname,' ',author_lname) as yell from books order by yell desc;

#aggregate functions
select author_lname, count(*) from books group by author_lname;
select author_lname, count(*) as books_written from books group by author_lname order by books_written desc;

SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
SELECT MIN(released_year) FROM books;
SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);

select concat(author_fname," ",author_lname) as author_fullname, max(pages) as longest_page_count from books group by author_fullname order by longest_page_count desc;

#sum all pages each author has written
select concat(author_fname,' ',author_lname) as author_fullname, sum(pages) as total_writtenpg from books group by author_fullname;

#excercises
select * from books;
select count(*) from books;
select released_year,count(*) from books group by released_year;
select sum(stock_quantity) from books;
select concat(author_fname," ",author_lname) as author ,avg(released_year) as avg_released_yr from books group by author;
select max(pages) from books;
select concat(author_fname," ",author_lname) as author, pages from books where pages=(select max(pages) from books);
select released_year as year, count(*) as '# books',avg(pages) as avg_pages from books group by released_year order by released_year asc;
#or
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;

#section 11
#not equal to
select * from books where released_year!=2017;
select title,author_lname from books where author_lname!='Gaiman';
SELECT * FROM books
WHERE title NOT LIKE '%e%';

SELECT * FROM books
WHERE released_year > 2005;
 
SELECT * FROM books
WHERE pages > 500;

SELECT * FROM books
WHERE pages < 200;
 
SELECT * FROM books
WHERE released_year < 2000;
 
SELECT * FROM books
WHERE released_year <= 1985;

SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers';
 
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title LIKE '%novel%';

SELECT title, pages FROM books 
WHERE CHAR_LENGTH(title) > 30
AND pages > 500;
 
SELECT title, author_lname FROM books
WHERE author_lname='Eggers' AND
released_year > 2010;
 
SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers' OR
released_year > 2010;
 
 
SELECT title, pages FROM books
WHERE pages < 200 
OR title LIKE '%stories%';

select title, released_year from books where released_year between 2004 and 2014;
select title,pages from books where pages between 200 and 300;
select title, released_year from books where released_year not between 2004 and 2014;
select title,pages from books where pages not between 200 and 300;

SELECT * FROM people WHERE birthtime 
BETWEEN CAST('12:00:00' AS TIME) 
AND CAST('16:00:00' AS TIME); #technically correct way of representing time.


SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
SELECT title, released_year FROM books
WHERE released_year >= 2000 
AND released_year % 2 = 1;

-- case statements
-- select columnnames
-- case
-- 	when ... then ...
-- else
-- end
-- from tablename;

select title,released_year,
CASE
 when released_year>=2000 then 'Modern lit'
 else '20th century list'
end as genre
from books;

SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
    
    
#excersises
select * from books;

select 10!=10;#0
select 15>14 and 99-5<=94;#true
select 1 in (5,3) or 9 between 8 and 10; #1
select * from books where released_year<1980;
select * from books where author_lname in ('Eggers','chabon');
select *  from books where author_lname='Lahri' and released_year>2000;
select * from books where pages between 100 and 200;
select * from books where author_lname like 'C%'or author_lname like 'S%';

select title,author_lname,
case
 when title like '%stories%' then 'Short stories'
 when title like '%Just Kids%' or title like '%A Heartbreaking Work%' then 'Memoir'
 else 'Novel'
end as 'TYPE'
from books;

select concat(author_fname,' ',author_lname) as full_name,count(*) ,
case
	when count(*)=1 then '1 book'
    when count(*)=2 then '2 books'
    when count(*)=3 then '3 books'
end as COUNT
 from books group by full_name;
