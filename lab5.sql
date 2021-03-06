-- Juan Diaz 
-- Dr.Rivas 
-- CMPT 308 
-- Lab 5 
-- 
-- 
-- 
-- 1. Show the cities of agents booking an order for a customer whose id is ‘c002’. Use joins; no subqueries.

select a.city
from agents a 
join orders o 
on o.aid = a.aid 
and o.cid ='c002';

-- 2. Show the ids of products ordered through any agent who makes at least one order for a customer in Dallas, sorted by pid from highest to lowest. Use joins; no subqueries.

select p.pid
from products p, orders o
join customers c
on c.cid = o.cid
where c.city = 'Dallas';

-- 3. Show the names of customers who have never placed an order. Use a subquery.

select name
from customers c
where c.cid not in    	(select cid 
			from orders);

-- 4. Show the names of customers who have never placed an order. Use an outer join.

select name
from customers c
full outer join  orders o 
on c.cid = o.cid
where o.cid is null;

-- 5. Show the names of customers who placed at least one order through an agent in their own city, along with those agent(s’) names.

select c.name, a.name
from agents a, customers c
where (c.cid, a.aid) in 	(select cid, aid
				from orders)
and a.city = c.city;

-- 6. Show the names of customers and agents living in the same city, along with the name of the shared city, regardless of whether or not the customer has ever placed an order with that agent.

select c.name, a.name, c.city
from customers c, agents a
where c.city = a.city;

-- 7. Show the name and city of customers who live in the city that makes the fewest different kinds of products. (Hint: Use count and group by on the Products table.)

select name, city
from customers
where city in	(select city
		from products
		group by city
		order by count(city) asc
		limit 1);
