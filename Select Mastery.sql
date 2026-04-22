
use MyDatabase;

-- select order table
select *
from  orders;

-- select custo table
select * 
from customers;

-- retreive custo col name, country, and score 
select 
	first_name, 
	country, 
	score
from customers;

-- retreive custo with score not equal to 0
select *
from customers
where score != 0;

--retreive custo from germany 
select *
from customers
where country = 'Germany';

-- retreive custo from germany with name and country col only
select 
	first_name,
	country
from customers
where country = 'Germany';

-- retreive custo and sort result by highest score first
select *
from customers
order by score desc;

-- lowest first and remove 0 
select *
from customers
where score != 0
order by score asc;

-- retreive custo and sort result by country and then by highest score 
select * 
from customers
order by 
	country asc,
	score desc;

-- find total score for each country
select 
	country, 
	sum(score) as Total_score
from customers
group by country;

-- find total score and total custo for each country 
select 
	country, 
	sum(score) as total_score,
	count(id) as total_customer
from customers
group by country;

-- find avg score for each country with score not equal to 0 and return only country with average score greater than 430
select country, avg(score) as avg_score
from customers 
where score != 0
group by country
having avg(score) > 430
order by avg_score desc;

--return unique list of all countries
select distinct country from customers; 

--return top 3 custo with highest score
select top 3 * from customers order by score desc;
--return lowest score 
select top 2 * from customers where score != 0 order by score asc;


-- return 2 most recent order
select top 2 * from orders order by order_date desc;