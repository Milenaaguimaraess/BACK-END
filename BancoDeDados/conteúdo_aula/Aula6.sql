USE employees;
SELECT * FROM employees.salaries;

-- é assim que comenta
-- se for função, tem que ter os parentêses 
 -- MIN é uma função
 SELECT MIN(salary) AS SALARIO_Mais_BAIXO FROM salaries;
 
 SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;
 
 -- MAX
 SELECT MAX(salary) AS maior_salario FROM salaries;
 -- MIN RAIZ
 SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;
 
 -- count
 SELECT COUNT(*) FROM salaries;
 SELECT COUNT(*) FROM employees where gender = "M";
 SELECT COUNT(*) FROM employees WHERE first_name = "Juan";  
 
 -- like (* pesquisar)
-- termo% -> desconsidera final
 SELECT * FROM employees where first_name LIKE "Geo%";
 -- %termo -> desconsidera o começo 
 SELECT * FROM employees WHERE first_name LIKE "%or";
 -- %termo% -> desconsidera o começo e o fim
 SELECT * FROM employees WHERE first_name LIKE "%in%";
 
 -- IN -> Kalloufi, Genin
 -- o um IN é eficaz para o uso do kalloufi e do genin simultaneamente/vário nomes, se n, só um nome usa o =
 SELECT * FROM employees WHERE last_name IN ("kalloufi", "Genin");
 
 -- Between -> entre
 SELECT * FROM salaries WHERE salary BETWEEN '40000' AND '50000';
 
 -- SUM -> soma
 SELECT SUM(salary) FROM salaries;
 