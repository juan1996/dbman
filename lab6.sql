-- Juan Diaz 
-- Dr. Rivas 
-- CMPT-308
-- Lab 6
 
 
-- 1. Display the name and city of customers who live in any city that makes the most different kinds of products. (There are two cities that make the most different products. Return the name and city of customers from either one of those.)
 
 select name, city 
 from customers 
 where city = (select city 
 		from products products
 		group by city 
 		order by count(city) desc limit 1);
 
 
-- 2. Display the names of products whose priceUSD is strictly above the average priceUSD, in reverse- alphabetical order.
 
 select name
 from products 
 where priceUSD > (select avg(priceUSD) 
 		    from products )
 order by name desc;
 
-- 3. Display the customer name, pid ordered, and the total for all orders, sorted by total from high to low.
 
 select c.name, o.pid, sum(o.dollars)
 from customers c inner join orders o on c.cid=o.cid
 group by c.name, o.pid
 order by sum(o.dollars) desc;
 
-- 4. Display all customer names (in alphabetical order) and their total ordered, and nothing more. Use coalesce to avoid showing NULLs.
 select c.name, o.pid, sum(coalesce(o.dollars))
 from customers c
 inner join order o 
 on c.cid = o.cid
 group by o.pid, c.name
 order by sum(o.dollars) desc;
 
-- 5. Display the names of all customers who bought products from agents based in Tokyo along with the names of the products they ordered, and the names of the agents who sold it to them.
 
 select customers.name, products.name, agents.name
 from customers
 inner join orders 
 on customers.cid=orders.cid
 inner join products
 on orders.pid=products.pid
 on agents.aid=orders.aid
 where agents.city='Tokyo';
 
 
-- 6. Write a query to check the accuracy of the dollars column in the Orders table. This means calcu- lating Orders.totalUSD from data in other tables and comparing those values to the values in Or- ders.totalUSD. Display all rows in Orders where Orders.totalUSD is incorrect, if any.
 
 Select*
 From (select o.*, o.qty*p.pricesusd*(1-(discount/100)) as truedollars
 from orders o 
 inner join products p on o.pid = p.pid
 inner join customers c on o.cid = c.cid) as tmptable
 where dollars !=truedollars
 
-- 7. What is the difference between a LEFT OUTER JOIN and a RIGHT OUTER JOIN? Give example queries in SQL to demonstrate. (Feel free to use the CAP2 database to make your points here.)
 
 select c.name, o.pid, sum(o.dollars)
 from customers c inner join orders o on c.cid = o.cid 
 group by c.name, o.pid
 order by sum(o.dollars) desc; 
