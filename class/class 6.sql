create or replace table student (sid int , sname string)

desc table student

select*from student

insert into student(sid , sname) values(101,'Mouni'),
                                        (102,'Rani'),
                                        (103,'Ramya'),
                                        (104,'Kavya')
                                       
alter table student
add column email string;

alter table student
add column phone int;

update student
       set phone = 1234567
where sid =102

update student
       set email = 'abc12@gmail.com'
where sid =102

select count(*) from student

select count (sid) from student
select *from student where sid=101 or sid=102

select *from student where sid=101 and  sname='Mouni'

select *from student where  email is  null

select *from student where  email is not null






















































       
       




                                        

                                        
