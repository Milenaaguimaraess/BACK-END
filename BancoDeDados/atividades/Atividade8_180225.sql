CREATE DATABASE atividade8;
USE atividade8;

CREATE TABLE clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);

CREATE TABLE pedidos(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
data_pedido VARCHAR(20),
id_cliente INT NOT NULL,
foreign key (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes (nome) values ("Carlos");
INSERT INTO pedidos (data_pedido,id_cliente) values ("25/01/2019",1);
INSERT INTO pedidos (data_pedido,id_cliente) values ("28/01/2019",1);
INSERT INTO pedidos (data_pedido,id_cliente) values ("02/02/2019",1);

INSERT INTO clientes (nome) values ("Ana");
INSERT INTO pedidos (data_pedido,id_cliente) values ("15/02/2019",2);

INSERT INTO clientes (nome) values ("Bruna");

INSERT INTO clientes (nome) values ("Jéssica");

INSERT INTO clientes (nome) values ("Victor");
INSERT INTO pedidos (data_pedido,id_cliente) values ("25/02/2019",5);

INSERT INTO clientes (nome) values ("Fernanda");
INSERT INTO pedidos (data_pedido,id_cliente) values ("29/02/2019",6);
INSERT INTO pedidos (data_pedido,id_cliente) values ("30/02/2019",6);
select * from clientes;

-- Liste os pedidos e os nomes dos clientes que fizeram esses pedidos.
SELECT pedidos.id_pedido , clientes.nome FROM pedidos inner join clientes ON pedidos.id_cliente = clientes.id_cliente;
-- Liste todos os clientes e os pedidos que fizeram (mesmo que não tenham feito pedidos).
SELECT clientes.nome , pedidos.id_pedido FROM clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente;
-- Mostre quantos pedidos cada cliente fez.
SELECT clientes.nome , count(pedidos.id_pedido) from clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente group by pedidos.id_cliente;
