--1 Бардык клиенттердин шаарлары уникалдуу чыксын
SELECT DISTINCT CITY FROM [Customers];
--2 Туулган жылы 1950 жана 1960 - жылдардын арасындагы ишкерлер чыксын
SELECT * FROM [Employees] WHERE BirthDate Between '1950-12-08' and '1960-12-08';
--3 Франциялык поставщиктердин аттары жана мамлекети чыксын
SELECT SupplierName,Country FROM [Suppliers] WHERE COUNTRY ='France';
--4 Олкосу Испаниядан башка, аты “A” дан башталган клиенттердин аты, адресси жана олкосу чыксын
SELECT CustomerName,address,country FROM [Customers] where country <> 'Spain' and customerName like 'A%';
--5 PostalCode бош болгон клиенттер чыксын
SELECT * FROM [Customers] where PostalCode ='';
--6 Лондондон болгон клиенттердин биринчи эки клиентин чыгаргыла
SELECT * FROM [Customers] where city='London' limit 2;
--7 Фамилиясы 4 тамгадан турган ишкерлердин аты жана туулган жылдары чыксын
SELECT FirstName,BirthDate FROM [Employees] where FirstName like '____';
--8 Ар бир олкодо канчадан поставщик бар экенин чыгаргыла
SELECT country,count() FROM [Suppliers] group by country;
--9 Поставщиктердин саны 1 эле болгон олколорду аты менен сорттоп чыгаргыла
SELECT country,count(*) FROM [Suppliers] group by country having count(*);
--10 Ар бир категориядагы продуктылардын жалпы суммасын чыгаргыла
SELECT categoryName,count(categoryName) FROM Products p join Categories c on p.CategoryId=c.CategoryId group by categoryName;
--11 6 жана 8 категориясындагы продуктылардын эн арзан баасын жана атын чыгаргыла
SELECT Products.ProductName, Products.Price FROM Products join Categories on Products.CategoryID = Categories.CategoryID where Products.CategoryID in (6, 8) order by Products.Price ASC limit 1;
--12 Продуктылар жана алардын поставщиктеринин аттары чыксын(сортировка болсун)
select ProductName,SupplierName from Products join Suppliers on Products.SupplierID=Suppliers.SupplierID group by ProductName and SupplierName;
--13 Ар бир поставщиктин канчадан продуктысы бар экени кемуу тартибинде сорттолуп чыксын
select SupplierName,ProductName,count(*) as ProductCount from Suppliers join Products on Suppliers.SupplierID=Products.SupplierID order by SupplierName and ProductCount asc;
--14 Клиенттердин аты CustomerName деп, ага саткан ишкерлердин аты жана алар кандай служба доставки колдонгону тууралуу маалымат чыксын
SELECT CustomerName, ShipperName, SupplierName
FROM Customers JOIN Shippers ON Customers.CustomerID = Shippers.CustomerID JOIN Shippers ON Supplier.supplierID = Shippers.SupplierID;
--15 Кайсы ишкер канча клиент обслуживайтеткен чыксын

