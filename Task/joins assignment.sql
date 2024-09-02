create or replace table A (Number INT);
desc table tables;

insert into A (Number ) values (1),
                                (1),
                                (1),
                                (2),
                                (5),
                                (6),
                                (7),
                                (null),
                                (null)

select* from A;

show tables;

create or replace table B (Number INT);

insert into B (Number) values (1),
                              (1),
                              (2),
                              (4),
                              (6),
                              (Null)

                
select*from B;

select A.Number, B.Number
from A  A inner join B B
on A.Number = B.Number
// Count:8

select A.Number, B.Number
from A  A  right join  B B
on A.Number = B.Number
// Count:10

select A.Number, B.Number
from A  A left join B B
on A.Number = B.Number
// Count:12

select A.Number, B.Number
from A  A full join B B
on A.Number = B.Number
// Count:14

select* from A self join A
// table 1 count:81

select* from  B self join B
// table 2 count:36

select* from A cross join B
// Cross join count:54

