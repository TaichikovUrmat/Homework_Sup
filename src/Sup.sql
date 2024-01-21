

create database DdlDml;
---------------------------------- languages ----------------------------------------------------------------------
create table languages ( id serial primary key , language varchar not null );
----------------------------------- publishers ------------------------------------------------------------------------
create table publishers ( id serial primary key , name varchar);
--------------------------------- authors ---------------------------------------------------------------------------
create type gender as enum ('Male','Female');

create table  authors (id serial  primary key , first_name varchar,last_name varchar , email varchar unique,
                       data_of_birth  date , country varchar, Gender gender );
-------------------------------------   books   ------------------------------------------------------------------------
create type genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');

create table books ( id serial primary key , name varchar, country varchar, published_year date,
                     price numeric, Genre genre );

alter table books add column authors_id  int references authors(id);
alter table books add column publishers_id int references publishers(id);
alter table  books add column languages_id  int references languages(id);

--------------------------------------------------------------------------------------------------------------------------------
insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into authors(first_name, last_name, email, data_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '30/9/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '30/10/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '16/5/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '24/4/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '3/7/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '29/12/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '14/12/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '29/1/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '17/11/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '8/9/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '3/12/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '28/8/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '28/3/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '5/8/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '17/10/1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, languages_id,publishers_id,authors_id)
values('Taina', 'Russia', '12/11/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '9/12/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '10/4/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '1/2/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '11/7/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '12/1/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '6/12/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '5/9/2022', '349',  'HISTORY', '4', '4', '2'),
      ('Emil und die Detektive', 'Germany', '11/6/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '1/3/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '3/2/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '10/3/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '5/10/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '24/9/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '2/8/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '19/6/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '10/3/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '14/11/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '16/7/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '12/4/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '4/1/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '6/1/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '13/2/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '25/6/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '14/5/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '14/10/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '9/1/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '7/2/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '11/10/2021', '599', 'BIOGRAPHY','1', '2', '15');

-----------------------------------------------------------------------------------------------------------------------------------
-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select b.name,b.published_year,b.Genre from books b;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select  distinct a.country  from authors a;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books b where b.published_year between '2020/1/1' and '2023/1/1';
-- 4.Детектив китептер жана алардын аттары чыксын.
select books.name,books.Genre from books where Genre = 'DETECTIVE';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select  concat(first_name , '   ', last_name) from authors;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select a.first_name,a.last_name,a.Gender   from authors a where  country in ('Germany','France') order by a.first_name,a.last_name asc;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select b.country,b.published_year,b.price,b.Genre from  books b where Genre <> 'ROMANCE' and b.price < 500;
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select  * from authors where Gender = 'Female' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select first_name , email,Gender  from authors where Gender = 'Female' and  email like '%.com' and length(first_name)= 4;
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select a.country, count(*) as author_count from authors a  group by country;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select a.country ,count(*) as author_tri from authors a group by country having count(*)>= 3 order by country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select b.Genre, count(price)  as total_books from books b group by Genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select Genre, min(price) as lowest_price from books b where Genre in  ('ROMANCE','DETECTIVE') group by  Genre;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select count(*) from books where Genre in ('HISTORY','BIOGRAPHY');
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.name,l.language,p.name from books b   inner join languages l on b.id = l.id
                                               inner join publishers p on l.id  = p.id;
-- 16  6 Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select a.first_name,a.last_name,p.name from authors a inner join   publishers p on a.id = p.id limit 6;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select * from  authors a left join books b on a.id = b.authors_id ;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select * from  books b inner join  languages l on b.languages_id = l.id  order by  b.name desc ;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select  p.name, round(avg(price)) as average_earnings from books b inner join publishers p on b.publishers_id = p.id group by   p.name;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select a.first_name,a.last_name,b.published_year from  books b  inner join authors a on b.authors_id = a.id  where b.published_year between  '1/1/2010' and '1/1/2015';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select last_name,first_name , b.published_year, sum(price) from  books b inner join  authors a on b.authors_id = a.id where  b.published_year
                                                                                                                                 between  '1/1/2010' and '1/1/2015' group by a.last_name, a.first_name, b.published_year;