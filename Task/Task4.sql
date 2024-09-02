show tables;

select*from employees

select employee_id,
       first_name,
       salary ,
       case
           when salary > 10000 then 'sr software' else 'jr software'
       end as designation
from employees

select employee_id,first_name, salary from employees
                   order by salary desc



select employee_id,first_name,
        salary ,
        row_number () over ( order by salary desc)as rid
        from employees

with cte_emp as(
     select employee_id,first_name,
        salary,department_id ,
        rank () over ( order by salary )as rank
        from employees 

) select   department_id,salary order by department_id,salary 
          

 select employee_id,first_name,
        salary ,
        dense_rank () over ( order by salary desc)as rid
        from employees

