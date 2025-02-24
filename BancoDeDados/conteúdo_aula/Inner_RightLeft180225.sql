CREATE DATABASE JoinAula;
USE JoinAula;

CREATE TABLE endereco (
id int primary key auto_increment,
rua varchar(255),
numero varchar(255),
pessoa_id int not null,
foreign key (pessoa_id) references pessoa(id)
);
-- ao ter uma coluna com id, essa coluna é a chave estrangeira. ex: pessoa_id

create table pessoa (
id int primary key auto_increment,
nome VARCHAR (100),
nacionalidade VARCHAR (5)
);

INSERT INTO pessoa (nome, nacionalidade) values ("Wanessa","AT");
INSERT INTO pessoa (nome, nacionalidade) values ("Peter","FR");
INSERT INTO endereco (rua,numero,pessoa_id) values ("Ceilândia","QNQ 14",1);
select * from endereco;

select pessoa.nome , endereco.rua from pessoa join endereco on pessoa.id = endereco.id;

-- inner -> intersenção ou o que as duas colunas tem em comum
-- left e right -> é quando quero mostrar mais dados de um lado ou do outro da intersençãoptimize
-- right join -> junta as duas tabelas, priorizando a tabela da direita
select pessoa.nome , endereco.rua from pessoa right join endereco on pessoa.id = endereco.id;
select pessoa.nome , endereco.rua from endereco right join pessoa on pessoa.id = endereco.id;
-- mesmo q a tabela tenha valores nulos, mas to inclinando o que eu quero pra um lado, vai aparecer o valor correspondente msm q seja nulo pq estou priorizando esse lado
-- left junta as duas tabelas, priorizando a tabela da esquerda
select pessoa.nome , endereco.rua from endereco left join pessoa on pessoa.id = endereco.id;

-- usando o db abaixo para aprender sobre group by:
use employees;
select * from employees;
select * from dept_emp;
 -- Group by -> quero agrupar as informações
 -- para usar o group by deve-se perguntar: o que eu quero, de onde, agrupar quem?
 select gender , count(gender) from employees group by gender;
 select gender as genero, count(gender) AS qtd_per_genero from employees group by gender;
-- no código acima, mudei o nome das colunas e ainda usei o group by
 select dept_no, count(dept_no) from dept_emp group by dept_no;
 