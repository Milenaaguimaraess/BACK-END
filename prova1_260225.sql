CREATE DATABASE lojaonline;
USE lojaonline;

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(16) UNIQUE NOT NULL,
	endereco VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
	data_pedido DATE,
	total INT NOT NULL,
	status_pedido VARCHAR(11) NOT NULL  
);
-- STATUS -> CONCLUIDO, PRONTO, EM PREPARO

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
	nome_produto VARCHAR(100),
	preco DECIMAL(6,2),
	id_fornecedor INT NOT NULL,
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id_fornecedor),
	estoque INT NOT NULL
); 

CREATE TABLE fornecedores(
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
	nome_fornecedor VARCHAR(255) NOT NULL,
	contado VARCHAR(255) NOT NULL,
	endereco VARCHAR(255) 
);

CREATE TABLE pagamento(
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
metodo_pagamento VARCHAR(100) NOT NULL,
status_pagamento VARCHAR(13) NOT NULL,
valor_pago DECIMAL(6,2)
);
-- STATUS -> em andamento, concluido, em espera
