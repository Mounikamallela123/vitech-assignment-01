create or replace table persons(
P_id int,
last_name string,
first_name string,
address string,
city string
)

select *from persons;

insert into
      persons (P_ID,last_name,first_name,address,city) values(1,'Hansen','Ola','Timoteivn 10','Sandnes');
      
insert into
      persons (P_ID,last_name,first_name,address,city) values(2,'Svendson','Tove','Borgvn 23','Sandnes');
     
insert into
      persons (P_ID,last_name,first_name,address,city) values(3,'Pattersen','Kari','Storgt  20','Stavanger');

    
insert into
      persons (P_ID,last_name,first_name,address,city) values(4,'Mounika','Mallela','Punganur  20','Madanapalli');

    
insert into
       persons (P_ID,last_name,first_name,address,city) values(5,'Ravi','Kari','Storgt  20','Stavanger');
 
select first_name,last_name from persons;


select distinct last_name,address,city from persons;

select last_name , city from persons where last_name = 'Mounika'and city = 'Madanapalli'

select*from persons where city = 'Stavanger';

select* from persons where first_name='Mallela' and last_name='Mounika'


select* from persons where first_name='Mallela' or last_name='Mounika'


select* from persons where first_name='Mallela' and (last_name='Mounika' or first_name='Mallela')

update persons
set first_name='Rani',last_name='Kari'
where P_ID = 5;

alter table persons
add email varchar(20);

alter table persons
drop email;

