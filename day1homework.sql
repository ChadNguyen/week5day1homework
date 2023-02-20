-- Question 1
-- How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor 
WHERE last_name = 'Wahlberg';

-- Question 2
-- How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment 
WHERE amount BETWEEN  3.99 AND 5.99;

-- Question 3
-- What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id 
ORDER BY count DESC; 


-- Question 4
-- How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM actor 
WHERE last_name LIKE '%William%';
-- 3

-- Question 5
-- What store employee (get the id) sold the most rentals?
SELECT staff_id , COUNT(staff_id)
FROM rental 
GROUP BY staff_id 
ORDER BY count DESC; 
-- staff id 1

-- Question 6
-- How many different district names are there?
SELECT count(DISTINCT district)
FROM address;


-- Question 7
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(film_id) 
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
-- film_id 508 has 15


-- Question 8
-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT count(last_name)
FROM customer
WHERE last_name LIKE '_%es';

-- Question 9 
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(amount)
FROM payment 
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING count(amount) > 250
ORDER BY count DESC; 

-- Question 10 Within the film table, how many rating categories are there? And what rating has the most
-- Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, count(rating)  
FROM film
GROUP BY rating
ORDER BY count DESC; 



