-- Display all available tables in the Sakila database.
use sakila;
show tables;

-- Retrieve all the data from the tables `actor`, `film` and `customer`.
select * from actor, film, customer;
select * from actor;
select * from film;
select * from customer;

-- Retrieve the following columns from their respective tables:
	-- 3.1 Titles of all films from the `film` table
	-- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	-- 3.3 List of first names of all employees from the `staff` table
    
select title from film;
select name as language from language;    
select first_name from staff;

-- Retrieve unique release years.
select distinct release_year from film;

-- Counting records for database insights:
	-- 5.1 Determine the number of stores that the company has.
	-- 5.2 Determine the number of employees that the company has.
	-- 5.3 Determine how many films are available for rent and how many have been rented.
	-- 5.4 Determine the number of distinct last names of the actors in the database.
    
select count(*) from store;
select count(*) from staff;
select * from rental;
select * from inventory;

select count(*) from inventory;  -- 4581 how many films are available for rent
select count(*) from rental; -- 16044 how many have been rented

select distinct last_name from actor; -- Determine the number of distinct last names of the actors in the database.

-- Retrieve the 10 longest films.
select title, length from film
order by length desc
limit 10;

-- Use filtering techniques in order to:
	-- 7.1 Retrieve all actors with the first name "SCARLETT".

select first_name, last_name from actor
where first_name = "SCARLETT";

-- BONUS: 
	-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
select title, length from film
where title like '%ARMAGEDDON%'
and length > 100;

-- - 7.3 Determine the number of films that include Behind the Scenes content
select count(*)  from film
where special_features like '%Behind the Scenes%';


