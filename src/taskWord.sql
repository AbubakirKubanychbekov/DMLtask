-- 1 Revising the select Query 1
select * from city where countrycode='USA' and population>100000;

--2 Revising the select Query 2
select name from city where countrycode='USA' and population > 120000;

--3 Select all
select * from city;

--4 Select by ID
select * from city where id='1661';

--5 Japanese cities’ attributes
select * from city where countrycode='JPN';

--6 Japanese cities’ names
select name from city where countrycode='JPN';

--7 Weather Observation 1
select city,state where from station;

--8 Weather Observation 3