create database Practice;
use Practice;
create table student(
id int,
firstname varchar(50),
lastname varchar(50),
sex text(6),
age int,
result int
);
drop table student;
alter table student 
add remark varchar(20);
alter table student
drop column remark;
alter table student
modify column result varchar(20);
alter table student
modify column id int primary key;
insert into student values(04,"Chaltu","Tadese","female",23,3.6);
select * from student;
select age from student;
select * from student where id=01;
select * from student limit 3;
select distinct firstname from student;
update student
set firstname="Naol" 
where id =04;
select * from student
where age between 22 and 25;
select * from student
where firstname like "C%";
select * from student
where firstname like "_haltu";
create table STUD(
id int,
firstname varchar(50),
lastname varchar(50),
sex text(6),
age int,
result dec
);
insert into STUD
values(04,"chala", "Bulcha","male",26,3.5),
       (05,"Desta", "Girma","female",24,3.4),
       (06,"Firaol", "Habtamu","male",21,3.6);
select * from student;
select * from student
union select * from STUD;
insert into student select * from STUD;
select max(result) from student;
select min(result) from student;
select count(firstname)from student;
select count(firstname)from student where sex="male";
select avg(result) from student;
select avg(result) from student where sex="female";
select sum(result) from student;
select sum(result) from student where sex="female";
select * from student
order by age asc;
select * from student
order by age desc;


