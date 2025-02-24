USE employees;
SELECT * FROM employees;

-- CHAR LENGTH -> CONTAR QUANTOS CARACTERES TEM  
SELECT first_name , CHAR_LENGTH(first_name) FROM employees;

-- CONCAT -> CONTATENAR
SELECT CONCAT(first_name," nasceu em ", birth_date) AS datas_nascimento FROM employees;

-- CONCAT_WS -> CONCATENA COM SEPARADOR
SELECT CONCAT_WS(" * ",first_name,last_name) from employees;

-- UCASE -> U-UPPER - maiusculo
-- LCASE -> L-LOWER -  minusculo
SELECT first_name , UCASE(first_name) from employees;

-- RECLACE -> TERMO N QUER, TERMO DESEJADO, troquei o nome george por um cara traquilo
SELECT REPLACE(first_name , "Georgi","Un cara traquilo") FROM employees WHERE emp_no; 

-- LEFT 
SELECT first_name , LEFT(first_name,3) from employees;
SELECT first_name , RIGHT(first_name,3) from employees;

SELECT hire_date, birth_date FROM employees;
-- date diff -> diferença entre datas (quanto tempo falta ou quanto tempo passou)
SELECT datediff(hire_date, birth_date) from employees;

select first_name, date_format(hire_date, "%d / %m /%y") from employees;

create table emails(
id int primary key auto_increment,
primario varchar(255) not null
);

insert emails(primario) values ("Carlota uai @ gmail . com");
select * from emails; 
select TRIM(primario) from emails;