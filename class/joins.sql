// Numeric functions:

select abs(1.25),abs(-4.71),abs(-981)

select mod(25,4),mod(-39,5),mod(1234,7)

select sqrt(1225),sqrt(585)

select square(12),square(15)

select power(5,4),power(2,3)

select ceil(2.3),ceil(-4.8),ceil(0)

select floor(2.3),floor(-4.8),floor(0)

select round(2.5),round(7.8),round(1.3)

select sign(9),sign(-8),sign(0)

select log(10,100),log(10,10)

select ln(20)

select factorial(6),factorial(5)

select exp(2),exp(1),exp(5)

// joins:

create or replace table persons (p_id INT,
                                 last_name STRING,
                                 first_name STRING,
                                 address varchar(30),
                                 city STRING);

desc table persons;

insert into persons (p_id ,last_name,first_name ,address , city )
           values(1,'Hansen','Ola','Timoteivn 10','Sandnes'),
                 (2,'Svendson','Tove','Borgvn 23','Sandnes'),
                 (3,'Pettersen','kari','Storgt 20','Stavanger')

select*from  persons;

create or replace table orders (o_id INT,
                                orderno INT,
                                p_id INT);

desc table orders;

insert into orders (o_id, orderno,p_id)
            values (1,77895,3),
                   (2,44678,3),
                   (3,22456,1),
                   (4,24562,1),
                   (5,34764,15)

select*from  orders;

select A.p_id,first_name,last_name,B.p_id,orderno,
     from persons A inner join orders B
on A.p_id = B.p_id

select A.p_id,first_name,B.p_id,orderno,
     from persons A left join orders B
on A.p_id = B.p_id

select A.p_id,first_name,B.p_id,orderno,
     from persons A right join orders B
on A.p_id = B.p_id

select A.p_id,first_name,B.p_id,orderno,
     from persons A full join orders B
on A.p_id = B.p_id


select A.p_id,first_name,B.p_id,orderno,
     from persons A full join orders B
on A.p_id = B.orderno

select A.p_id,first_name,B.p_id,orderno,
     from persons A right join orders B
on A.p_id = B.orderno

select p_id from persons
   union  all
select orderno from orders

select p_id from persons
   union  
select orderno from orders

select p_id from persons
   union  all
select p_id from orders

select p_id from persons
   union  
select orderno from orders

select p_id from persons
   union  all
select o_id from orders

select p_id from persons
   union  
select o_id from orders

create or replace table orders (order_id INT,product_name STRING,orderdate datetime);

   insert into orders(order_id,product_name,orderdate )
            values(1,'Geitost','2008-11-11 11:12:01');

select*from orders;


select current_time() from orders

select current_date() from orders




