--gell all customer along with order, including orders without matching customer do with right join and same from left 
Select 
	c.id,
	c.first_name,
	o.customer_id,
	o.sales
from customers as c
right join orders as o
on c.id=o.customer_id

Select 
	c.id,
	c.first_name,
	o.customer_id,
	o.sales
from orders as o
left join customers as c
on c.id=o.customer_id

--get all customers and all orders, even if there is no match

Select *
from customers as c
full join orders as o
on c.id=o.customer_id

--get all customer who does not order anything
--left anti join - return rows from left that has no match in right
Select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
left join orders as o
on c.id=o.customer_id
where o.customer_id is null

--right anti join - return rows from right that has no match in left
--solve this from left anti join
Select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
right join orders as o
on c.id=o.customer_id
where c.id is null

Select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from orders as o
left join customers as c 
on c.id=o.customer_id
where c.id is null

-- full anti join - only unmatching rows from both side 
--find custo without order and orders without customer
select * 
from orders as o
full join customers as c 
on c.id = o.customer_id
where 
	c.id is null or o.customer_id is null;

-- advanced inner join - return only matching from left and right 
--get all custo with their orders but only customer who placedd the order - without using inner joins
select *
from customers as c 
left join orders as o
on c.id = o.customer_id
where o.customer_id is not null


-- generate all possible combinations of custo and order

select *
from customers
cross join orders 