select *from employees

select *from employees order by employee_id 

select *from employees order by employee_id desc

select *from employees order by first_name ;

select *from employees order by first_name desc ;

select employee_id,first_name,salary from employees

select top 5 employee_id,first_name,salary from employees
                              order by salary desc
select top 5 employee_id,first_name,salary from employees
                              order by salary asc 

select salary , count(*) from employees group by salary
                                        order by count(*) desc
                                        
select salary , count(*) from employees group by salary
                                        order by count(*) asc

select department_id , count(*) from employees group by department_id 

select distinct(first_name) from employees;

select first_name , count(*) from employees group by first_name 
                                            having count (*) > 1

select manager_id,department_id,count(*) from employees
                    group by manager_id,department_id having count(*) > 1

select max(salary) from employees

select avg(salary) from employees

select department_id , max(salary) from employees group by department_id
                                                order by department_id

select concat (first_name , ' ', last_name) as fullname from employees

select upper(first_name) from employees

select lower (first_name) from employees

select max(salary) from employees where salary not in (
select max(salary) from employees
)


select len (first_name) from employees


select replace('Mounika','M''N);

select left('Mounika',3)

select right('Mounika',4)

select reverse ('Mounika')


select charindex('M','Mounika')

select ascii('Mounika')

