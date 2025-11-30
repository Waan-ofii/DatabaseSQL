create database Student;
use Student;
create table classA(
id int primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
age int,
result double
 );
 insert into classB
 values(05,"Abdi","Geda",24,86),
 (06,"Getu","Balcha",27,77),
 (07,"Bontu","chala",26,78),
 (08,"Yaned","Tolcha",22,83);
 select * from classa;
 insert into classA
 values(06,"Saami","Cape",22,89);
 
 select *
 from classA
 inner join classB
 on classA.id = classB.id;
 
 select *
 from classA
 left join classB
 on classA.id = classB.id;
 
 select *
 from classA
 right join classB
 on classA.age = classB.age;
 
 select *
 from classA
 full  join classB
 on A.fname = B.fname;
 
 select *
 from classA
 cross join classB;
 
 select classa.fname as classa,
		classb.fname as classb
        from classa
left join classb
on classa.id = classb.id;

select *
 from classA
 natural join classB;
		
 
 