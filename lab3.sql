-- ￼Juan Diaz
-- Dr.Rivas
-- CMPT 308
-- Lab 3
-- 1)List the ordno and dollars of all orders.

select ordno, dollars
select *
from orders;


--￼2)List the name and city of agents named Smith.



select name, city
from agents
WHERE name = 'Smith';

--￼￼3) List the pid, name, and priceUSD of products with quantity more than 208,000.

select pid, name, priceUSD
from products
where quantity > 208000;

-- 4)L​ist the names and cities of customers in Dallas.

select city, name
from agents
where city = 'Dallas';

--￼￼5) ​List the names of agents not in New York and not in Tokyo.

select name,city
from agents
where city != 'New York' and city != 'Tokyo';

--￼6)L​ist all data for products not in Dallas or Duluth that cost US$1 or more.

select *
from products
where (city != 'Dallas' and city != 'Duluth') and (priceUSD >= 1.00);

--￼￼7) List all data for orders in January or March.

select *
from orders
where mon = 'jan' or mon = 'mar';

--￼8) List all data for orders in February less than US$500.
-- ￼￼
select *
from orders
where mon = 'feb' and dollars < 500;

