--Week 5  - Monday Questions 
--1. How many actors are there with the last name ‘Wahlberg’? 
select last_name from actor where last_name like 'Wahlberg';
			-- there are two wahlbergs

--2. How many payments were made between $3.99 and $5.99? 
select * from payment;
select amount from payment where amount = 3.99;
select amount from payment where amount = 5.99;
			--There are no payments with the amount of 3.99 or 5.99

--3. What film does the store have the most of? (search in inventory) 
select film_id, COUNT(*) as copy_count
from inventory
group by film_id
order by copy_count desc
limit 1;
			--the id of the film that the store has the most of is 350

--4. How many customers have the last name ‘William’? 
select last_name from customers where last_name like 'William';
select last_name from customers where last_name = 'William';
select last_name from customers where last_name = 'W%______';
select * from customers;
select last_name from customers;
			----There are no last name "William" in this data base


--5. What store employee (get the id) sold the most rentals?
select * from rental;
select staff_id, COUNT(*) as rental_amount
from rental
group by staff_id 
order by rental_amount desc 
limit 1;
		-- Staff memeber ID 1 rented the most vehicles

--6. How many different district names are there? 
select * from address;
select COUNT(distinct district)
from address 
				---There are 378 distinct districts

--7. What film has the most actors in it? (use film_actor table and get film_id) 
select * from film_actor;  --do this to verify you have the right data
select film_id, COUNT(actor_id) as actor_count
from film_actor
group by film_id 
order by actor_count desc 
limit 1;

		---film id 508 had the most actors numbering 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select COUNT(*)
from customer 
where last_name like '%er';

		--there are 59 customers with 'er' at the end of their last name

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  
--with ids between 380 and 430? (use group by and having > 250) 
select COUNT(distinct amount)
from payment
where customer_id between 380 and 430
group by amount 
having COUNT(*)>250;

		-- There are three amounts paid by cusomers with id's between 380 and 430 after the 250th customer

--10. Within the film table, how many rating categories are there? And what rating has the most 
--movies total?

select COUNT(distinct rating)
from film;

select rating, COUNT(*) as data_count
from film 
group by rating
order by data_count desc
limit 1;

		----PG-13 had the most movies asigned to it and there are five rating types.

