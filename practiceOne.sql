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
insert into student values(03,"Chaltu","Tadese","female",23,3.6);
select * from student;
select age from student;
select * from student where id=01;
