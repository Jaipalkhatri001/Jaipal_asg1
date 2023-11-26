Use mavenmovies;
-- Q1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences ;
-- ans  primary key is the key which describe the complete data of the table and forign key is the key which combine the two table and reduce the memory 
describe actor;
-- in this table actor_id is primary key
describe actor_award; 
-- in this table actor_award_id is primary key
describe address;
-- in this table addres_id is primary key
-- in this table city_ID is foriegn key

-- in this table address_id is primary key
Describe city;
-- in this table city_id is primary key
-- in this table country_ID is foriegn key
-- Q2 List all details of actors 
select * from actor ;
-- Q3 List all customer information from DB. 
select * from customer;
-- Q4 List different countries. 
select * from country;
-- Q5 Display all active customers. 
select * from customer where active=1;
-- Q6 List of all rental IDs for customer with ID 1. 
select rental_ID from rental where customer_ID=1 ;
-- Q7 Display all the films whose rental duration is greater than 5 . 
Select * from film where rental_duration>5;
-- Q8 List the total number of films whose replacement cost is greater than $15 and less than $20. 
Select * from film where replacement_cost>15 and replacement_cost<20;
-- Q9 Find the number of films whose rental rate is less than $1. 
Select count(*) as no_of_film from film where rental_rate<1;
-- Q10 Display the count of unique first names of actors. 
select count(distinct first_name) as unique_first_name from actor;
-- Q11 Display the first 10 records from the customer table . 
 Select * from customer limit 10;
-- Q12 Display the first 3 records from the customer table whose first name starts with ‘b’. 
select * from customer where first_name like "B%" limit 3;
-- Q13 Display the names of the first 5 movies which are rated as ‘G’. 
select * from film where rating='g'limit 5;
-- Q14 Find all customers whose first name starts with "a". 
select * from customer where first_name like "A%";
-- Q15 Find all customers whose first name ends with "a". 
select * from customer where first_name like "%A";
-- Q16 Display the list of first 4 cities which start and end with ‘a’ 
select * from city where city like "%A" limit 4;
-- Q17 Find all customers whose first name have "NI" in any position. 
select * from customer where first_name like "%NI%" ;
-- Q18 Find all customers whose first name have "r" in the second position 
select * from customer where first_name like "_r%" ;
-- Q19 Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select * from customer where first_name like "A%" and length( first_name)>=5;
-- Q20 Find all customers whose first name starts with "a" and ends with "o". 
select * from customer where first_name like "A%"and first_name like "%O" ;
-- Q21 Get the films with pg and pg-13 rating using IN operator. 
select * from film where rating in ('pg','pg-13');
-- Q22 Get the films with length between 50 to 100 using between operator. 
select * from film where length between 50 and 100 ;
-- Q23 Get the top 50 actors using limit operator. 
select * from actor limit 50 ;
-- Q24 Get the distinct film ids from inventory table. 
select * from inventory;
select Distinct film_id from inventory ;
 