select brand,model,price from cars; --1
--2
select count(*) as total_cars from cars; --2
--3
select * from cars where brand='Hyundai'; --3
--4
select * from cars where color in ('Blue' ,'Red'); --4
--5
select * from cars where year_of_issue between '2000'and '2010'; --5
--6
select count(id) from cars where cars.brand='Chevrolet'; --6
--7
select avg(year_of_issue) as  srednya_statica_year from cars; --7
--8
select *from cars where brand='Audi'or brand='Toyota' or brand='Kia'or brand='Ford'; --8
--9
select * from cars where cars.model ilike 'T%'; --9
--10
select * from cars where cars.model ilike '%e'; --10
--11
select * from cars where brand ilike '_____'; --11
--12
select sum(price)from cars where brand='Mercedes-Benz';  --12
--13
select * from cars order by price desc limit 1; --13
select * from cars order by price asc limit 1; --13
select brand,price from cars where price=(select max(price)from cars); --13
select brand,price from cars where price=(select min(price)from cars); --13
--14
select * from cars where brand!='Toyota'; --14
--15
select * from cars order by price desc limit 10; --15
--16
select * from cars order by year_of_issue desc limit 10 offset 5;   --16
--17
select * from cars where year_of_issue not between '1995' and '2005'; --17
-- 18
select color,count(*)from cars group by color order by count(*) desc limit 1;  --18

