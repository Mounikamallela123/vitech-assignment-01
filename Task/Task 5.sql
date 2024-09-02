create table orders(order_id INT,
                     Amount VARCHAR(20));

desc table orders;

insert into orders (order_id ,Amount) values (1,2000),
                                            (2,-20),
                                            (3,300),
                                            (4,3000),
                                            (5,-200);
select*from orders

select order_id,
       Amount,
case 
    when (Amount) > 1 then 'Profit' else 'Loss'
end as Profit_Loss
from orders


create or replace table days (number INT)
desc table days

insert into days (number)
        values(1),
               (2),
               (3),
               (4),
               (5),
               (6),
               (7),
               (8),
               (9),
               (10)                   
                                 
select*from days;
delete from days


select Number,
case  when  Number=1 then 'Sunday'          
    when Number= 2 then 'Monday' 
    when Number= 3 then 'Tuesday' 
    when Number= 4 then 'wednesday' 
    when Number= 5 then 'Thursday'
    when Number= 6 then 'Friday' 
    when Number= 7 then 'Saturday'
    else 'invalid day'
   
end as weeks
from days;

with cte_emp as(
     select salary,count(department_id)
        row_number () over ( order by salary desc)as rid
        from employees group by salary

) select*from cte_emp 


with cte_emp as(
     select employee_id,first_name,
        salary , department_id from employees 
            group by department_id
        row_number () over ( order by salary desc) as rid
        from employees 

) select*from cte_emp 

select  salary , department_id ,
        max(salary) as highest_salary
from employees
group by department_id;
select*from employees

select department_id,max(salary) as highest_salary
from employees
group by department_id 

select department_id,max(salary) as highest_salary
from employees
group by department_id 

select department_id,salary
from (
     select
     department_id,
     salary,
         row_number() over (partition by department_id order by salary desc) as rn
     from employees
) ranked_salaries
where rn = 1;


select with cte_emp
           as(
from (
     select
     employee_id,
     first_name,
     department_id,
     salary,
         rank() over (partition by department_id order by salary desc) as rn
     from employees
) ranked_salaries
where rn = 1 order by 3 desc 


