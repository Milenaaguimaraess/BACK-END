CREATE DATABASE atividade;
USE atividade;

CREATE TABLE vendas ( 
 id_venda INT PRIMARY KEY NOT NULL auto_increment,
 id_produto INT NOT NULL, 
 quantidade INT NOT NULL, 
 preco_unitario DECIMAL(6,2) NOT NULL, 
 id_categoria INT NOT NULL
 );
 
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (1,20,25.50,1);
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (3,10,14.50,12);
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (5,35,30.00,15);
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (7,17,24.99,21);
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (11,03,10.00,24);
INSERT INTO vendas(id_produto, quantidade, preco_unitario, id_categoria) values (13,9,18.00,5);
   
 SELECT* FROM vendas;

SELECT SUM(quantidade * preco_unitario) FROM vendas where id_categoria = 5;

create table produtos (
id_produto INT PRIMARY KEY NOT NULL auto_increment, 
nome_produto VARCHAR(100),
 preco DECIMAL(6,2), 
 estoque INT NOT NULL
 );
 
 INSERT INTO produtos (nome_produto, preco, estoque) values ("Smartphone",230.00,125);
 INSERT INTO produtos (nome_produto, preco, estoque) values ("SmartWatch",39.99,100);
 INSERT INTO produtos (nome_produto, preco, estoque) values ("Headphone",25.50,67);
 INSERT INTO produtos (nome_produto, preco, estoque) values ("Pen Drive",135.50,56);
 INSERT INTO produtos (nome_produto, preco, estoque) values ("Notebook",30.00,190);


 
 