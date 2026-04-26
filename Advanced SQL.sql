-- retrieve list of all orders, along with related customer, product, and employee  details. for each order,  
--jisplay : orderid, custo name,  product name , sales, price, sales person name

select 
	o.OrderID,
	o.Sales,
	c.FirstName as customerfirstname,
	c.LastName as customerlastname,
	p.Product as productname,
	p.Price,
	e.FirstName as salesperson_firstname,
	e.LastName as salesperson_lastname
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID = c.CustomerID
left join Sales.Products as p
on o.ProductID = p.ProductID
left join Sales.Employees as e
on o.SalesPersonID = e.EmployeeID