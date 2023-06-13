-- views
use gokulraj;

-- INSTEAD OF TYPING THIS QUERY ALL THE TIME...
SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;
    
-- we can make a virtual table

create view full_review as
SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;

select * from full_review;
select genre, avg(rating) from full_review group by genre;
show tables;
-- full_review;
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;
 
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
DROP VIEW ordered_series;
---------
drop view full_review;
create or replace view full_review as
SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;
select * from full_review;
-- group by having we cannot use where clause in views table so we use group by having
select title, avg(rating) , count(rating) from full_review group by title;
select title, avg(rating) , count(rating)  from full_review group by title having count(rating)>1;
-- Rollup
select title, avg(rating) from full_review group by title with rollup ;
SELECT 
    title, COUNT(rating)
FROM
    full_review
GROUP BY title WITH ROLLUP;