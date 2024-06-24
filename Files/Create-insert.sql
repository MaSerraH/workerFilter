create table dbo.people(
peopleId int not null identity(1,1) primary key,
firstName varchar(20) not null,
lastName varchar(20) not null,
email varchar(20) not null,
gender char(2) not null,
age int not null,
urlBild nvarchar(200),
);
------------------------------------------------------------------------
select * from dbo.people

truncate table dbo.people;
drop table dbo.people;

------------------------------------------------------------------------
insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Ludwig', 'Schneider',
'ludwig@email.at', 'm', 'Programmierer', 'Wien', '35', 'https://www.pexels.com/de-de/foto/mann-der-laptop-computer-mit-beiden-handen-halt-2036656/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Maria', 'Schneider',
'maria@email.at', 'w', 'Programmierer', 'Barcelona', '30', 'https://www.pexels.com/de-de/foto/fotografie-einer-frau-mit-laptop-1181292/', 'Spanien')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Matthias', 'keineAhnung',
'matthias@email.at', 'm', 'Programmierer', 'St. Pölten', '40', 'https://www.pexels.com/de-de/foto/grunes-schwimmband-1415809/', 'Österreich')




insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Ludwig', 'Schneider',
'ludwig@email.at', 'm', '35', 'https://www.pexels.com/de-de/foto/mann-der-laptop-computer-mit-beiden-handen-halt-2036656/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Maria', 'Schneider',
'maria@email.at', 'w', '30', 'https://www.pexels.com/de-de/foto/fotografie-einer-frau-mit-laptop-1181292/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Matthias', 'keineAhnung',
'matthias@email.at', 'm', '40', 'https://www.pexels.com/de-de/foto/grunes-schwimmband-1415809/')

----------------------------------------------------------------------------------



insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Margit', 'KeineAhnung',
'margit@email.at', 'w', 'Lehrer', 'Wien', '28', 'https://www.pexels.com/de-de/foto/frau-bei-der-diskussion-eines-unterrichtsplans-3772511/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Anton', 'Gruber',
'anton@email.at', 'm', 'Lehrer', 'Salzburg', '35', 'https://www.pexels.com/de-de/foto/lehrer-der-vor-einer-tafel-steht-5212339/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Karl', 'Wagner',
'karl@email.at', 'm', 'Lehrer', 'Wien', '45', 'https://www.pexels.com/de-de/foto/mann-menschen-schreibtisch-sitzung-5428155/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Maria', 'Rincon',
'maria2@email.at', 'w', 'Lehrer', 'Madrid', '42', 'https://www.pexels.com/de-de/foto/mann-im-grauen-button-up-hemd-und-in-schwarzen-jeans-die-neben-braunem-holztisch-stehen-5212667/', 'Spanien')





insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Margit', 'KeineAhnung',
'margit@email.at', 'w', '28', 'https://www.pexels.com/de-de/foto/frau-bei-der-diskussion-eines-unterrichtsplans-3772511/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Anton', 'Gruber',
'anton@email.at', 'm', '35', 'https://www.pexels.com/de-de/foto/lehrer-der-vor-einer-tafel-steht-5212339/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Karl', 'Wagner',
'karl@email.at', 'm', '45', 'https://www.pexels.com/de-de/foto/mann-menschen-schreibtisch-sitzung-5428155/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Maria', 'Rincon',
'maria2@email.at', 'w', '42', 'https://www.pexels.com/de-de/foto/mann-im-grauen-button-up-hemd-und-in-schwarzen-jeans-die-neben-braunem-holztisch-stehen-5212667/')

---------------------------------------------------------------------------------------------------------------------------------

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Anton', 'KeineAhnung',
'anton2@email.at', 'm', 'Schwimmtrainer', 'Wien', '20', 'https://www.pexels.com/de-de/foto/person-unter-wasser-2412715/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Luisa', 'Diaz',
'luisa@email.at', 'w', 'Schwimmtrainer', 'Madrid', '29', 'https://www.pexels.com/de-de/foto/frau-im-grunen-badeanzug-3622714/', 'Spanien')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Sascha', 'Rütter',
'sascha@email.at', 'm', 'Schwimmtrainer', 'St. Pölten', '40', 'https://www.pexels.com/de-de/foto/mann-der-gelbe-badekappe-tragt-um-zu-schwimmen-2062697/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Ana', 'Gonzalez',
'ana@email.at', 'w', 'Schwimmtrainer', 'Valencia', '35', 'https://www.pexels.com/de-de/foto/frau-in-der-blauen-schwimmbrille-die-am-pool-lehnt-3775171/', 'Spanien')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Iris', 'Müller',
'iris@email.at', 'w', 'Schwimmtrainer', 'St. Pölten', '55', 'https://www.pexels.com/de-de/foto/schwarz-und-weiss-schwarzweiss-anzug-frau-11344876/', 'Österreich')

insert into dbo.people(firstName, lastName, email, gender, profession,city, age, urlBild,country) values('Chritian', 'Mayer',
'chris@email.at', 'm', 'Schwimmtrainer', 'Wien', '64', 'https://www.pexels.com/de-de/foto/mann-person-pool-tauchen-8688187/', 'Österreich')




insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Anton', 'KeineAhnung',
'anton2@email.at', 'm', '20', 'https://www.pexels.com/de-de/foto/person-unter-wasser-2412715/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Luisa', 'Diaz',
'luisa@email.at', 'w', '29', 'https://www.pexels.com/de-de/foto/frau-im-grunen-badeanzug-3622714/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Sascha', 'Rütter',
'sascha@email.at', 'm', '40', 'https://www.pexels.com/de-de/foto/mann-der-gelbe-badekappe-tragt-um-zu-schwimmen-2062697/' )

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Ana', 'Gonzalez',
'ana@email.at', 'w',  '35', 'https://www.pexels.com/de-de/foto/frau-in-der-blauen-schwimmbrille-die-am-pool-lehnt-3775171/')

insert into dbo.people(firstName, lastName, email, gender, age, urlBild) values('Iris', 'Müller',
'iris@email.at', 'w',  '55', 'https://www.pexels.com/de-de/foto/schwarz-und-weiss-schwarzweiss-anzug-frau-11344876/')

insert into dbo.people(firstName, lastName, email, gender,  age, urlBild) values('Chritian', 'Mayer',
'chris@email.at', 'm', '64', 'https://www.pexels.com/de-de/foto/mann-person-pool-tauchen-8688187/')

------------------------------------------------------------------------------------------------------------------------------------------


create table dbo.country(
countryId int not null identity (1,1) primary key,
countryName varchar(20) not null
)
insert into dbo.country(countryName) values('Österreich')
insert into dbo.country(countryName) values('Spanien')

---------------------------------------------------------------------------------------------------------------------------------------------

create table dbo.city(
cityId int not null identity(1,1) primary key,
cityName varchar(20) not null
)

insert into dbo.city(cityName) values('Wien')
insert into dbo.city(cityName) values('St. Pölten')
insert into dbo.city(cityName) values('Salzburg')
insert into dbo.city(cityName) values('Madrid')
insert into dbo.city(cityName) values('Barcelona')
insert into dbo.city(cityName) values('Valencia')
--------------------------------------------------------------------------------------------------------------------------------------------

create table dbo.professions(
professionId int not null identity(1,1) primary key,
professionName varchar(30) not null
)

insert into dbo.professions(professionName) values('Programmierer')
insert into dbo.professions(professionName) values('Lehrer')
insert into dbo.professions(professionName) values('Schwimmtrainer')

---------------------------------------------------------------------------------------------------------------------------------------------

create table dbo.conjuction(
Id int not null identity(1,1) primary key,
peopleId int not null,
countryId int not null,
cityId int not null,
professionId int not null
)

insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(1,1,1,1)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(2,2,5,1)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(3,1,2,1)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(4,1,1,2)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(5,1,3,2)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(6,1,1,2)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(7,2,4,2)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(8,1,1,3)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(9,2,4,3)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(10,1,2,3)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(11,2,6,3)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(12,1,2,3)
insert into dbo.conjuction(peopleId,countryId,cityId,professionId) values(13,1,1,3)

alter table dbo.conjuction add constraint fk_people foreign key (peopleId) references dbo.people(peopleId);
alter table dbo.conjuction add constraint fk_city foreign key (cityId) references dbo.city(cityId);
alter table dbo.conjuction add constraint fk_country foreign key (countryId) references dbo.country(countryId);
alter table dbo.conjuction add constraint fk_professions foreign key (professionId) references dbo.professions(professionId);

-----------------------------------------------------------------------------------

select* from dbo.people
select* from dbo.city
select * from dbo.country
select* from dbo.professions
select * from dbo.conjuction