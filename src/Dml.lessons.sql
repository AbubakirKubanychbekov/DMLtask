create table  students(id serial primary key,
                       first_name varchar (50)not null ,
                       last_name varchar not null ,
                       gender varchar,
                       date_of_birth date,
                       email varchar unique ,
                       course varchar,
                       payment numeric,
                       duration int);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('Abubakir','Kubanychbekov','Male','06-05-1997','abubakir@gmail.com','java',2000,5),
       ('Aizada','Abdurazakova','Female','01-02-2002','aizada@gmail.com','js',1900,7),
       ('Manas','Vaidullaev','Male','07-07-1995','manas@gmail.com','java',2500,6),
       ('Akylai','Musaeva','Female','02-03-2001','akylai@gmail.com','js',2000,2);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('Kanjarbek','Abdirashitov','Male','04-03-1997',null,'js',100000,7);

select * from students;
select first_name,last_name from students;
select first_name as name from students;
select concat(first_name,' ',last_name)as full_name from students;
select first_name,payment*students.duration as total_payment from students;
select first_name,last_name from students order by last_name;
select distinct course from students;
select * from students where course='java';
select * from students where course='java' and payment>2000;
select * from students where course='java' or payment>2000;
select * from students limit 5;
select * from students offset 3;
select * from students limit 2 offset 2;
select * from students fetch  first 4 rows only;
select * from students where first_name in ('Akylai','Manas');
select * from students where gender not in ('Male');
select * from students where date_of_birth between '06-05-1997'and '06-07-2001';
select * from students where last_name like '%va';
select * from students where last_name ilike 'A%'; --ignorCase
select course from students group by course;
select gender,count(*)from students group by gender;
select gender,count(*)from students group by gender having count(gender)>2;

-- aggregat
select course,count(*)from students group by course;
select max(payment)from students;
select min(payment)from students;
select avg(payment)from students;
select round(avg(payment))from students;-- okruglenie
select sum(payment)from students;
select first_name,coalesce(email,'unknown')from students;

--data
select now();
select now()-interval '1 year';
select now()+interval '1 week';
select now()::date;
select now()::time;
select extract(year from now());
select extract(month from now());
select extract(day from now());
select extract(dow from now());
select extract(century from now());

--delete
delete from students where first_name='Akylai';
delete from students where gender='Female';
update students set course='c++' where course='js';
update students set first_name='Kanjarbek' where first_name='Kanzharbek';