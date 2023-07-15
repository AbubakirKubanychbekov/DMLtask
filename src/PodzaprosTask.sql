create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
create type Gender as enum ('Male','Female');

create table authors(id serial primary key,first_name varchar,
                     last_name varchar,email varchar,date_of_birth date,country varchar,gender Gender);
create table books(id serial primary key ,name varchar,country varchar,
                   published_year date,price numeric,genre Genre);
create table publishers(id serial primary key, name varchar);
create table languages(id serial primary key,language varchar);

alter table authors add constraint email unique (email);
alter table languages alter column language set not null ;
alter table books add language_id int references languages(id);
alter table books add publisher_id int references publishers(id);
alter table books add author_id int references authors(id);





insert into publishers(name) values ('RELX Group'),
                                    ('Thomson Reuters'),
                                    ('Holtzbrinck Publishing Group'),
                                    ('Shanghai Jiao Tong University Press'),
                                    ('Wolters Kluwer'),
                                    ('Hachette Livre'),
                                    ('Aufbau - Verlag'),
                                    ('Macmillan'),
                                    ('Harper Collins'),
                                    ('China Publishing Group'),
                                    ('Springer Nature'),
                                    ('Grupo Planeta'),
                                    ('Books.Ru Ltd. St Petersburg'),
                                    ('The Moscow Times'),
                                    ('Zhonghua Book Company');

insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/10/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/11/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/6/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/4/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/2/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/11/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/9/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/7/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/8/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/8/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/7/1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values ('Taina', 'Russia', '11/12/2021', '568', 'DETECTIVE', 5, 12, 6),
       ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', 5, 13, 11),
       ('Homo Faber', 'Germany', '4/10/2022', '772', 'FANTASY', 3, 5, 3),
       ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', 'DETECTIVE', 3, 3, 10),
       ('Lord of the Flies', 'United States', '7/11/2015', '900', 'FANTASY', 1, 2, 4),
       ('Un soir au club', 'France', '1/12/2018', '480', 'DRAMA', 2, 1, 1),
       ('Voina', 'Russia', '12/6/2004', '880', 'HISTORY', 5, 4, 13),
       ('Sun Tzu', 'China', '9/5/2022', '349', 'HISTORY', 4, 4, 2),
       ('Emil und die Detektive', 'Germany', '6/11/2010', '228', 'DETECTIVE', 3, 5, 10),
       ('Coule la Seine', 'France', '3/1/2015', '732', 'FANTASY', 2, 6, 1),
       ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', 5, 14, 13),
       ('Fantastic Mr Fox', 'United States', '3/10/2018', '309', 'FANTASY', 1, 9, 8),
       ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', 2, 6, 9),
       ('“The Death of Ivan Ilyich', 'Russia', '9/4/2000', '814', 'DRAMA', 5, 6, 6),
       ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', 2, 8, 5),
       ('Die Verwandlung', 'Germany', '6/9/2008', '305', 'DETECTIVE', 3, 7, 12),
       ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', 'DETECTIVE', 3, 3, 3),
       ('LÉtranger', 'France', '11/4/2017', '422', 'ROMANCE', 2, 8, 5),
       ('Lao Tse', 'China', '7/6/2005', '900', 'FANTASY', 4, 4, 2),
       ('Semya', 'Russia', '4/12/2004', '194', 'DRAMA', 5, 13, 11),
       ('Empty World', 'United States', '1/4/2008', '324', 'FANTASY', 1, 11, 15),
       ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', 3, 5, 10),
       ('The Fault in Our Stars', 'United States', '2/3/2008', '396', 'ROMANCE', 1, 9, 4),
       ('Die R uber', 'Germany', '6/5/2020', '300', 'ROMANCE', 3, 7, 12),
       ('Jung Chang', 'China', '5/4/2021', '600', 'HISTORY', 4, 10, 7),
       ('Les Aventures de Tintin', 'France', '4/10/2015', '582', 'DRAMA', 2, 1, 5),
       ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', 'DETECTIVE', 3, 5, 10),
       ('Amy Tan', 'China', '1/9/2023', '486', 'DRAMA', 4, 4, 7),
       ('Krasnaya luna', 'Russia', '2/7/2020', '550', 'FANTASY', 5, 12, 11),
       ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY', 1, 2, 15);

--1
select name,published_year,genre from books;
--2
select distinct country from authors;
--3
select name,published_year from books where published_year between '1/12/2020'and'1/12/2023';
--4
select name,genre from books where genre='DETECTIVE';
--5
select distinct concat(first_name,'-',last_name) as author from authors;
--6
select first_name,last_name,country from authors where country in ('Germany' , 'France') order by first_name,last_name;
--7
select name,country,published_year,price,genre from books where genre<>'ROMANCE' and price < 500;
--8
select * from authors where gender='Female' limit 3;
--9
select * from authors where gender='Female' and email like '%com' and first_name like '____' ;
--10
select country,count(country)from authors group by country;
--11
select country,count(*) as count_authors from authors group by country having count(*)=3 order by country;
--12
select genre,count(*) from books group by genre;
--13
select genre,min(price) from books where genre in ('ROMANCE','DETECTIVE') group by genre;
--14
select genre,count(*) from books where genre in ('HISTORY','BIOGRAPHY') group by genre;
--15
select name,language_id,publisher_id from books where language_id in (select distinct language_id from books);
--16
select * from authors join publishers on authors.id=publishers.id;
--17
select * from authors join books b on authors.id = b.author_id;
--18
select count(*) from languages join books  on languages.id= books.language_id;
--19
select publisher_id,round(avg(price)) as averageEarnings from books group by publisher_id;
--20
select first_name,last_name,name,published_year from books join authors a on a.id=books.author_id where books.published_year between '1/12/2010' and '1/12/2015';
--21
select sum(price) from books join authors a on a.id=books.author_id where books.published_year between '1/12/2010' and '1/12/2015';
