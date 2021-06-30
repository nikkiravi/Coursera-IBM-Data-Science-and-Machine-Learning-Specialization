--First SQL
drop table INSTRUCTOR;

create table INSTRUCTOR
(ins_id int primary key not null,
lastname varchar(20) not null,
firstname varchar(20) not null,
city varchar(20) not null,
country char(2) not null
);

insert into INSTRUCTOR
(ins_id, lastname, firstname, city, country)
VALUES
(1, 'Ahuja', 'Rav', 'Toronto', 'CA'),
(2, 'Chong', 'Raul', 'Toronto', 'CA'),
(3, 'Vasudevan', 'Hima', 'Chicago', 'US');

select * from INSTRUCTOR;

select firstname, lastname, country from INSTRUCTOR
where city = 'Toronto';

update INSTRUCTOR
set city = 'Markham'
where ins_id = 1;

delete from INSTRUCTOR
where ins_id in (2);

select * from INSTRUCTOR;
--End of First SQL

