USE sakila;

USE sakila;
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'sakila';

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT * FROM rental;


SELECT title FROM film;

SELECT * FROM language;
SELECT f.title, l.name AS "language"
FROM film AS f
INNER JOIN language AS l
ON f.language_id = l.language_id;

SELECT first_name
FROM staff
WHERE first_name IS NOT NULL;

SELECT DISTINCT release_year
FROM film;

SELECT * FROM inventory;
SELECT * FROM film;
SELECT * FROM store;
SELECT * FROM rental;
SELECT * FROM address;
SELECT * FROM staff;

SELECT COUNT(*) AS num_stores
FROM store;

SELECT COUNT(DISTINCT address_id) AS num_store_addresses
FROM address;

SELECT COUNT(*) AS num_employees
FROM staff;

SELECT 
  (SELECT COUNT(*) FROM inventory) AS films_available,
  (SELECT COUNT(*) FROM rental) AS films_rented;

SELECT COUNT(*) FROM inventory AS films_available;

SELECT COUNT(*) FROM rental AS films_rented;
  
SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';