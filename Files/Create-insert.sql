create table dbo.worker(
workerId int not null identity(1,1) primary key,
firstName varchar(20) not null,
lastName varchar(20) not null,
email varchar(20) not null,
gender char(2) not null,
age int not null,
urlBild nvarchar(200),
);
------------------------------------------------------------------------


truncate table dbo.people;

drop table dbo.worker;
drop table dbo.city;
drop table dbo.conjuction;
drop table dbo.country;
drop table dbo.professions;

------------------------------------------------------------------------

url:https://www.pexels.com/de-de/foto/


insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Ludwig', 'Schneider',
'ludwig@email.at', 'm', '35', 'mann-der-laptop-computer-mit-beiden-handen-halt-2036656.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Maria', 'Schneider',
'maria@email.at', 'w', '30', 'fotografie-einer-frau-mit-laptop-1181292.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Matthias', 'keineAhnung',
'matthias@email.at', 'm', '40', 'grunes-schwimmband-1415809.jpg')

----------------------------------------------------------------------------------



insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Margit', 'KeineAhnung',
'margit@email.at', 'w', '28', 'frau-bei-der-diskussion-eines-unterrichtsplans-3772511.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Anton', 'Gruber',
'anton@email.at', 'm', '35', 'lehrer-der-vor-einer-tafel-steht-5212339.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Karl', 'Wagner',
'karl@email.at', 'm', '45', 'mann-menschen-schreibtisch-sitzung-5428155.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Maria', 'Rincon',
'maria2@email.at', 'w', '42', 'mann-im-grauen-button-up-hemd-und-in-schwarzen-jeans-die-neben-braunem-holztisch-stehen-5212667.jpg')

---------------------------------------------------------------------------------------------------------------------------------


insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Anton', 'KeineAhnung',
'anton2@email.at', 'm', '20', 'person-unter-wasser-2412715.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Luisa', 'Diaz',
'luisa@email.at', 'w', '29', 'frau-im-grunen-badeanzug-3622714.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Sascha', 'R�tter',
'sascha@email.at', 'm', '40', 'mann-der-gelbe-badekappe-tragt-um-zu-schwimmen-2062697.jpg' )

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Ana', 'Gonzalez',
'ana@email.at', 'w',  '35', 'frau-in-der-blauen-schwimmbrille-die-am-pool-lehnt-3775171.jpg')

insert into dbo.worker(firstName, lastName, email, gender, age, urlBild) values('Iris', 'M�ller',
'iris@email.at', 'w',  '55', 'schwarz-und-weiss-schwarzweiss-anzug-frau-11344876.jpg')

insert into dbo.worker(firstName, lastName, email, gender,  age, urlBild) values('Chritian', 'Mayer',
'chris@email.at', 'm', '64', 'mann-person-pool-tauchen-8688187.jpg')

------------------------------------------------------------------------------------------------------------------------------------------


create table dbo.country(
countryId int not null identity (1,1) primary key,
countryName varchar(20) not null
)
insert into dbo.country(countryName) values('�sterreich')
insert into dbo.country(countryName) values('Spanien')

---------------------------------------------------------------------------------------------------------------------------------------------

create table dbo.city(
cityId int not null identity(1,1) primary key,
cityName varchar(20) not null
)

insert into dbo.city(cityName) values('Wien')
insert into dbo.city(cityName) values('St. P�lten')
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
workerId int not null,
countryId int not null,
cityId int not null,
professionId int not null
)

insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(1,1,1,1)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(2,2,5,1)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(3,1,2,1)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(4,1,1,2)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(5,1,3,2)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(6,1,1,2)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(7,2,4,2)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(8,1,1,3)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(9,2,4,3)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(10,1,2,3)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(11,2,6,3)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(12,1,2,3)
insert into dbo.conjuction(workerId,countryId,cityId,professionId) values(13,1,1,3)

alter table dbo.conjuction add constraint fk_worker foreign key (workerId) references dbo.worker(workerId);
alter table dbo.conjuction add constraint fk_city foreign key (cityId) references dbo.city(cityId);
alter table dbo.conjuction add constraint fk_country foreign key (countryId) references dbo.country(countryId);
alter table dbo.conjuction add constraint fk_professions foreign key (professionId) references dbo.professions(professionId);

-----------------------------------------------------------------------------------

select* from dbo.worker
select* from dbo.city
select * from dbo.country
select* from dbo.professions
select * from dbo.conjuction


select* from dbo.worker
select* from dbo.professions
select * from dbo.conjuction