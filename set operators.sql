-- combine all data from emp and customers  into one table 

select FirstName, LastName from Sales.Employees
union
select FirstName, LastName from Sales.Customers

-- combine all data from emp and customers  into one table with duplicates 
-- union all is more powerfull than union because it doesnot check duplicates condition 

select FirstName, LastName from Sales.Employees
union all
select FirstName, LastName from Sales.Customers



