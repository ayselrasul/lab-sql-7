#Instructions
# In the table actor, which are the actors whose last names are not repeated? For example if you would sort the 
# data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd.
# These three actors have the same last name. So we do not want to include this last name in our output. 
# Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our 
# output list.

 SELECT last_name
from sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;


# Which last names appear more than once? We would use the same logic as in the previous question but this time
# we want to include the last names of the actors where the last name was present more than once
 
SELECT last_name
from sakila.actor  #COUNT(*) returns the number of rows in a specified table
GROUP BY last_name
HAVING COUNT(last_name) > 1;


#Using the rental table, find out how many rentals were processed by each employee

select staff_id, count(rental_id) as total_rentals
from sakila.rental
group by staff_id;


#Using the film table, find out how many films were released each year

select release_year,count(film_id) AS released_films_per_year
from sakila.film
Group By release_year;

#Using the film table, find out for each rating how many films were there

select rating,count(film_id)
from sakila.film 
Group By rating;


#What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select rating, round(AVG(length),2)
from sakila.film
Group By rating;film



#Which kind of movies (rating) have a mean duration of more than two hours?

select rating,AVG(length)
from sakila.film 
Group By rating
Having AVG(length)>120; 





