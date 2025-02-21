CREATE DATABASE concessionaria_MJ;
USE concessionaria_MJ;

CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE
);
select * from clientes;

CREATE TABLE produto_carros (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL
);
select * from produto_carros;

CREATE TABLE colaboradores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_colaborador VARCHAR(150) NOT NULL,
    matricula varchar(6) NOT NULL
);
select * from colaboradores;

CREATE TABLE vendas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_carro INT NOT NULL,
    id_cliente INT NOT NULL,
    id_colaborador INT NOT NULL,
    dataDaVenda VARCHAR(10),
    horaDaVenda VARCHAR(5),
    quantidade int not null,
    dataDaReserva VARCHAR(10),
    horaDaReserva VARCHAR(5),
    FOREIGN KEY (id_carro) REFERENCES produto_carros(id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id)
);
select * from vendas;

CREATE TABLE historicoDeCompras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_venda INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_venda) REFERENCES vendas(id)
);
select * from historicoDeCompras;

CREATE TABLE historicoDeVendas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_colaborador INT NOT NULL,
    id_venda INT NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id),
    FOREIGN KEY (id_venda) REFERENCES vendas(id)
);
select * from historicoDeCompras;

#ALTER TABLE colaboradores ADD FOREIGN KEY (id_venda) REFERENCES vendas(id);
#ALTER TABLE vendas ADD FOREIGN KEY (id_carro) REFERENCES produto_carros(id);
#ALTER TABLE vendas ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id);
#ALTER TABLE vendas ADD FOREIGN KEY (id_colaborador) REFERENCES colaboradores(id);