-- In thins section we work and learn 
-- some statement "like" LIKE to retrieve some row 
-- for example we want to get some record, it has some first_name and last_name
-- in this query we have some last name it has last name of some people with "M" character in "last part":
-- select first_name, last_name from customer where last_name like "%m"


-- in this query we have some last name it has last name of some people with "M" character in "first part":
-- select first_name, last_name from customer where last_name like "m%"



-- in this query we have some last name it has last name of some people with "MA" character in "BETWEEN":
-- select first_name, last_name from customer where last_name like "%MA%"



-- we can use some undersocre sign to define some char in null place 
-- Like below query that return row that has in last part of first_name "A" character :
-- _ _ A has 3 part, part 1 and 2 has two null place with any character but in part 3 should be "A" character:
-- select first_name, last_name from customer where first_name like "__A"

-- below query, return all first_name of people that has in the third word "A" and any other places 'S'
-- select first_name, last_name from customer where first_name like "__A%s%"








