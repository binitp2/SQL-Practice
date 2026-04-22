/* create	table persons(
	id int not null, 
	person_name varchar(50) not null, 
	birth_date date,
	phone varchar(15),
	constraint pk_persons primary key (id)
);

-- insert data from custo to person 
insert into persons 
select id, first_name as person_name, Null, 'Unknown' from customers

select * from persons */

select * from customers;

--change score of custo 5 to 1000
update customers
set score = 1000
where id = 5;



--delete 
delete from persons where id = 5;
