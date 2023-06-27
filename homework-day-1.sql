--- 1. Number of actors with last name 'Wahlberg' = 2
select count(last_name)
from actor
where last_name = 'Wahlberg';

-- 2. Number of payments made between 3.99 and 5.99 = 1
select amount
from payment
where amount between 3.99 and 5.99;

-- 3. The store has 72 titles with 8 copies. One of them is titled "Crossroads Casualties"
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

select title from film 
where film_id = 193;

-- 4. there are no customers with the last name 'William' (there is one with Williams)
select first_name, last_name from customer
where last_name like 'William';

-- 5. The store employee with ID 1 has the most rentals.
select staff_id, count(rental_id) from rental
group by staff_id;

-- 6. There are 378 district names.
select count(distinct district) from address 

-- 7. The film with the most actors is Lambs Cincinatti (film_id 508)
select film_id, count(actor_id) from film_actor 
group by film_id
order by count(actor_id) desc;

select title from film
where film_id = '508';

-- 8. There are 13 customers with a last name ending in 'es' from store_id 1.
select count(customer_id) from customer
where store_id = '1' and last_name like '%es';

-- 9. Three (3) payment amounts (-425.01, -423.01, and -427.01) had rentals above 250
-- for customers with ids between 380 and 430.
select amount, count(amount) from payment
where customer_id > 380 and customer_id < 430
group by amount 
order by count(amount) desc;

-- 10. There are 5 rating categories. PG-13 has the most (223) movies total. 
select count(distinct rating) from film

select rating, count(rating) from film
group by rating
order by count(rating) desc;

