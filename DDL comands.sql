use MyDatabase;

--create table with id , person_name, birth_date, and phone 
create table person (
	id int not null,
	person_name varchar(50) not null,
	birth_date date,
	phone varchar(12),
	constraint pk_persons primary key (id)
);

--alter - edit defination of table, add new col -email
alter table person
add email varchar(50) not null;

-- atler for remove phone 
alter table person 
drop column phone;

drop table person
