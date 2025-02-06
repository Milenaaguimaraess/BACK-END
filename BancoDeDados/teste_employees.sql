#SELECT * FROM employees where first_name = "Juan";
#SELECT * FROM employees;
#select * from employees where first_name = "Milena";

#insert into employees (birth_date, first_name, last_name, gender, hire_date) value ("2003-02-21", "Milena", "Neve", "F", "2024-09-05");

#set sql_safe_updates =0;
#update employees set last_name = "Neves" where last_name = "Neve"

select * from employees where last_name = "Neves"