-- combine all data from emp and customers  into one table 

select FirstName, LastName from Sales.Employees
union all
select FirstName, LastName from Sales.Customers



