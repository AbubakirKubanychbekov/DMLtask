Server [localhost]:
Database [postgres]: mydatabase
Port [5432]:
Username [postgres]:
Пароль пользователя postgres:
psql (15.3)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

mydatabase=# select * from people;
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# select * from people where first_name = "Manas";
ОШИБКА:  столбец "Manas" не существует
СТРОКА 1: select * from people where first_name = "Manas";
                                                  ^
mydatabase=# select * from people where first_name = 'Manas';
 id | first_name | last_name  | age | gender |  address   | phone_number |      email      | occupation | nationality | education | language  | ismarried | haschildren | height | weight
----+------------+------------+-----+--------+------------+--------------+-----------------+------------+-------------+-----------+-----------+-----------+-------------+--------+--------
  2 | Manas      | Vaidullaev |  28 |        | Tunguch 56 | 0772334455   | manas@gmail.com | courses    | Kyrgyz      | developer | Kyrgyzcha | t         | f           |    170 |     65
(1 ёЄЁюър)


mydatabase=# select * from people;
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# update people set address='Гражданская 119' where id='4';
UPDATE 1
mydatabase=# update people set address='Гражданская 119' where id='4';
UPDATE 1
mydatabase=# update people set address='Гражданская 119' wher id='4';
ОШИБКА:  ошибка синтаксиса (примерное положение: "wher")
СТРОКА 1: update people set address='?а │¤ -бЄ п 119' wher id='4';
                                                      ^
mydatabase=# update people set address ='Гражданская 119' where id ='4';
UPDATE 1
mydatabase=# update people set education='Valutchik',email='boss12'where id='4';
UPDATE 1
mydatabase=# select * from people where id='4';
 id | first_name | last_name | age | gender |     address     | phone_number | email  |        occupation         | nationality | education | language | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+-----------------+--------------+--------+---------------------------+-------------+-----------+----------+-----------+-------------+--------+--------
  4 | Anabal     | Millan    |  43 | Female | Гражданская 119 | 736-393-2928 | boss12 | Database Administrator II | China       | Valutchik | Khmer    | f         | f           |     53 |     65
(1 ёЄЁюър)


mydatabase=# delete from people where id='1';
DELETE 1
mydatabase=# select id from people;
 id
----
  2
  3
  5
  6
  7
  8
  9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
 30
 31
 32
 33
 34
 35
 36
 37
 38
 39
 40
  4
(39 ёЄЁюъ)


mydatabase=# select * from people where country ='Usa';
ОШИБКА:  столбец "country" не существует
СТРОКА 1: select * from people where country ='Usa';
                                     ^
mydatabase=# select * from people where nationality='China';
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# from people where nationality='Kyrgyz';
ОШИБКА:  ошибка синтаксиса (примерное положение: "from")
СТРОКА 1: from people where nationality='Kyrgyz';
          ^
mydatabase=# select * from people where nationality='Kyrgyz';
 id | first_name | last_name  | age | gender |  address   | phone_number |      email      | occupation | nationality | education | language  | ismarried | haschildren | height | weight
----+------------+------------+-----+--------+------------+--------------+-----------------+------------+-------------+-----------+-----------+-----------+-------------+--------+--------
  2 | Manas      | Vaidullaev |  28 |        | Tunguch 56 | 0772334455   | manas@gmail.com | courses    | Kyrgyz      | developer | Kyrgyzcha | t         | f           |    170 |     65
(1 ёЄЁюър)


mydatabase=# select * from education where profession = 'Software' and age >= 25 AND age <= 35;
ОШИБКА:  отношение "education" не существует
СТРОКА 1: select * from education where profession = 'Software' and ag...
                        ^
mydatabase=# select * from people where education = 'Software' and age >= 25 AND age <= 35;
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+-----------+-------------+--------+--------
(0 ёЄЁюъ)


mydatabase=# select * from people where ismarried!='true' and haschildren='true';
 id | first_name |  last_name  | age |  gender  |         address          | phone_number |              email              |        occupation        | nationality  |         education          |         language          | ismarried | haschildren | height | weight
----+------------+-------------+-----+----------+--------------------------+--------------+---------------------------------+--------------------------+--------------+----------------------------+---------------------------+-----------+-------------+--------+--------
  6 | Ainsley    | Arson       |  72 | Female   | 375 Autumn Leaf Trail    | 637-986-3624 | aarson2@biglobe.ne.jp           | Account Executive        | Portugal     | Associate Professor        | Amharic                   | f         | t           |     67 |     86
 11 | Dane       | Shorthouse  | 100 | Male     | 36076 Eliot Drive        | 707-858-6273 | dshorthouse7@ebay.com           | Compensation Analyst     | Sweden       | Graphic Designer           | Armenian                  | f         | t           |     25 |     85
 12 | Benita     | Brundale    |  69 | Female   | 27912 Meadow Ridge Court | 949-813-6543 | bbrundale8@ning.com             | Graphic Designer         | South Africa | Research Associate         | Greek                     | f         | t           |     45 |     56
 14 | Amanda     | Spriddle    |  98 | Female   | 5 Prairie Rose Junction  | 831-651-7477 | aspriddlea@pagesperso-orange.fr | Research Assistant III   | Canada       | Recruiter                  | Indonesian                | f         | t           |    115 |     92
 19 | Borden     | Martelet    |  41 | Bigender | 15 Truax Way             | 308-544-5503 | bmarteletf@globo.com            | Financial Advisor        | China        | Product Engineer           | Tsonga                    | f         | t           |    155 |     91
 20 | Elston     | O'Concannon |  74 | Male     | 5722 Little Fleur Park   | 885-891-9755 | eoconcannong@ifeng.com          | Nurse                    | China        | Tax Accountant             | New Zealand Sign Language | f         | t           |    148 |     72
 21 | Brantley   | Curnok      |  41 | Male     | 22675 Bowman Trail       | 350-112-2198 | bcurnokh@engadget.com           | Database Administrator I | France       | Actuary                    | Assamese                  | f         | t           |    119 |     95
 22 | Stacee     | McLinden    |  87 | Female   | 053 Anzinger Junction    | 482-972-6015 | smclindeni@sbwire.com           | Financial Advisor        | Russia       | Nurse Practicioner         | Greek                     | f         | t           |    119 |     21
 33 | Lisha      | Epilet      |  84 | Female   | 48 Jenna Crossing        | 843-781-2261 | lepilett@ebay.com               | Editor                   | Mexico       | Account Coordinator        | Azeri                     | f         | t           |     76 |     35
 37 | Brana      | Pantridge   |  50 | Female   | 37 Rockefeller Parkway   | 208-977-8116 | bpantridgex@wiley.com           | Marketing Manager        | Argentina    | Internal Auditor           | Lao                       | f         | t           |    106 |      7
 40 | Raynard    | Gogay       |  82 | Male     | 25 Karstens Pass         | 998-127-2777 | rgogay10@businesswire.com       | Clinical Specialist      | China        | Software Test Engineer III | Yiddish                   | f         | t           |    156 |     76
(11 ёЄЁюъ)


mydatabase=# select * from people where height!='170' and gender='Female';
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# select * from people where gender='Female', height!='170';
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: select * from people where gender='Female', height!='170';
                                                    ^
mydatabase=#  select * from people where gender='Female' and height > 170;
 id | first_name | last_name | age | gender |        address         | phone_number |         email          |         occupation         | nationality |        education         |  language  | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+------------------------+--------------+------------------------+----------------------------+-------------+--------------------------+------------+-----------+-------------+--------+--------
  8 | Trudi      | Ketton    |  26 | Female | 3 Sherman Court        | 525-550-4409 | tketton4@psu.edu       | Food Chemist               | Indonesia   | Marketing Assistant      | Papiamento | t         | f           |    180 |     34
 15 | Avivah     | Cortese   |  24 | Female | 858 Northridge Terrace | 382-775-3033 | acorteseb@google.co.jp | Physical Therapy Assistant | Indonesia   | General Manager          | French     | t         | f           |    180 |     76
 18 | Neille     | Kestin    |  84 | Female | 95963 Emmet Hill       | 659-371-9171 | nkestine@vkontakte.ru  | Engineer II                | Indonesia   | Senior Financial Analyst | Gujarati   | f         | f           |    189 |     14
(3 ёЄЁюъш)


mydatabase=# select * from people where gender='Male' and weight !> 75;
ОШИБКА:  оператор не существует: double precision !> integer
СТРОКА 1: select * from people where gender='Male' and weight !> 75;
                                                              ^
ПОДСКАЗКА:  Оператор с данными именем и типами аргументов не найден. Возможно, вам следует добавить явные приведения типов.
mydatabase=# select * from people where gender='Male' and weight >= 75;
 id | first_name | last_name  | age | gender |          address           | phone_number |           email           |          occupation          | nationality |          education           | language | ismarried | haschildren | height | weight
----+------------+------------+-----+--------+----------------------------+--------------+---------------------------+------------------------------+-------------+------------------------------+----------+-----------+-------------+--------+--------
 11 | Dane       | Shorthouse | 100 | Male   | 36076 Eliot Drive          | 707-858-6273 | dshorthouse7@ebay.com     | Compensation Analyst         | Sweden      | Graphic Designer             | Armenian | f         | t           |     25 |     85
 21 | Brantley   | Curnok     |  41 | Male   | 22675 Bowman Trail         | 350-112-2198 | bcurnokh@engadget.com     | Database Administrator I     | France      | Actuary                      | Assamese | f         | t           |    119 |     95
 24 | Silvester  | Cockland   |  98 | Male   | 4670 Goodland Point        | 622-427-3709 | scocklandk@lycos.com      | Biostatistician II           | Cameroon    | Cost Accountant              | Danish   | t         | t           |    143 |     83
 28 | Tobit      | Kunisch    |  40 | Male   | 46536 La Follette Junction | 958-287-9408 | tkunischo@comcast.net     | Human Resources Assistant II | Ukraine     | Software Engineer II         | Fijian   | t         | t           |    152 |     88
 30 | Garner     | Aldie      |  61 | Male   | 11 Swallow Center          | 275-688-8909 | galdieq@sogou.com         | VP Marketing                 | China       | Administrative Assistant III | French   | t         | t           |    113 |     77
 36 | Earl       | Tefft      |  75 | Male   | 63 Artisan Hill            | 941-211-6852 | etefftw@sphinn.com        | Analyst Programmer           | Serbia      | Data Coordinator             | Sotho    | f         | f           |    142 |     91
 40 | Raynard    | Gogay      |  82 | Male   | 25 Karstens Pass           | 998-127-2777 | rgogay10@businesswire.com | Clinical Specialist          | China       | Software Test Engineer III   | Yiddish  | f         | t           |    156 |     76
(7 ёЄЁюъ)


mydatabase=# select avga(age) from people;
ОШИБКА:  функция avga(integer) не существует
СТРОКА 1: select avga(age) from people;
                 ^
ПОДСКАЗКА:  Функция с данными именем и типами аргументов не найдена. Возможно, вам следует добавить явные приведения типов.
mydatabase=# select avg(age)from people;
         avg
---------------------
 57.4871794871794872
(1 ёЄЁюър)


mydatabase=# select education,count(*)as count from people group by education;
          education           | count
------------------------------+-------
 Budget/Accounting Analyst II |     1
 Financial Advisor            |     1
 Internal Auditor             |     1
 Associate Professor          |     1
 Research Assistant II        |     2
 Valutchik                    |     1
 Recruiter                    |     1
 Marketing Manager            |     1
 Civil Engineer               |     1
 Clinical Specialist          |     1
 Senior Financial Analyst     |     2
 Administrative Assistant III |     1
 Teacher                      |     1
 Software Engineer II         |     1
 Nurse Practicioner           |     2
 Accounting Assistant I       |     1
 Tax Accountant               |     1
 Cost Accountant              |     1
 Graphic Designer             |     1
 Product Engineer             |     1
 General Manager              |     2
 Account Coordinator          |     1
 Web Designer I               |     1
 Media Manager I              |     1
 developer                    |     1
 Staff Accountant II          |     1
 Financial Analyst            |     1
 Data Coordinator             |     1
 Research Associate           |     1
 Marketing Assistant          |     2
 Automation Specialist III    |     1
 dancer                       |     1
 Software Test Engineer III   |     1
 Actuary                      |     1
(34 ёЄЁюъш)


mydatabase=# select min(age)from people;
 min
-----
  16
(1 ёЄЁюър)


mydatabase=# select * from students where last_name like '%va';
 id | first_name | last_name | age
----+------------+-----------+-----
(0 ёЄЁюъ)


mydatabase=# select * from people where email ilike 'gmail.com';
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+-----------+-------------+--------+--------
(0 ёЄЁюъ)


mydatabase=# select * from people where email like '%@gmail.com';
 id | first_name | last_name  | age | gender |  address   | phone_number |      email       | occupation | nationality | education | language  | ismarried | haschildren | height | weight
----+------------+------------+-----+--------+------------+--------------+------------------+------------+-------------+-----------+-----------+-----------+-------------+--------+--------
  2 | Manas      | Vaidullaev |  28 |        | Tunguch 56 | 0772334455   | manas@gmail.com  | courses    | Kyrgyz      | developer | Kyrgyzcha | t         | f           |    170 |     65
  3 | Akylai     | Musaeva    |  22 | Female | Djal       | 0554667788   | akylai@gmail.com | dance      | Russian     | dancer    | Russian   | f         | f           |    168 |     58
(2 ёЄЁюъш)


mydatabase=# select * from people order by height desc;
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# select * from people order by height asc;
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# select count(*)from people where nationality='Russia';
 count
-------
     1
(1 ёЄЁюър)


mydatabase=# select * from people where email ilike '%com' and phone_number ilike '774%';
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+-----------+-------------+--------+--------
(0 ёЄЁюъ)


mydatabase=# select * from people where email ilike '%com' and phone_number ilike '744%';
 id | first_name | last_name | age |   gender    |      address       | phone_number |       email        |     occupation      | nationality |       education       |  language  | ismarried | haschildren | height | weight
----+------------+-----------+-----+-------------+--------------------+--------------+--------------------+---------------------+-------------+-----------------------+------------+-----------+-------------+--------+--------
 32 | Zelda      | Whitsey   |  37 | Genderfluid | 306 Towne Junction | 744-134-7934 | zwhitseys@dell.com | Safety Technician I | Nigeria     | Research Assistant II | Papiamento | t         | f           |    161 |     73
(1 ёЄЁюър)


mydatabase=# select * from people where occupation isnull;
 id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+-----------+-------------+--------+--------
(0 ёЄЁюъ)


mydatabase=# select * from people where ismarried='false';
ОШИБКА:  для символа с последовательностью байт 0xc3 0xad из кодировки "UTF8" нет эквивалента в "WIN1251"
mydatabase=# select * from people where education ilike 'web%';
 id | first_name | last_name | age | gender |     address     | phone_number |      email       |          occupation          | nationality |   education    | language  | ismarried | haschildren | height | weight
----+------------+-----------+-----+--------+-----------------+--------------+------------------+------------------------------+-------------+----------------+-----------+-----------+-------------+--------+--------
 31 | Ki         | Iley      |  55 | Female | 83 Hintze Alley | 259-403-1027 | kileyr@zdnet.com | Human Resources Assistant IV | China       | Web Designer I | Hungarian | t         | f           |     47 |     77
(1 ёЄЁюър)