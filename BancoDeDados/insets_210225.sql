INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (1,1,1,"25/10/2021","12:24","22/10/2021","10:00",2);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (2,2,2,"12/11/2021","15:25","11/11/2021","16:17",3);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (3,3,3,"17/11/2021","12:24","10/11/2021","09:45",4);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (4,4,4,"25/10/2021","12:24","15/10/2021","15:38",1);

INSERT INTO clientes (nome, email, telefone) VALUES ("Fernanda","fefe@gmail.com", "55 77 9845-6765");
INSERT INTO clientes (nome, email, telefone) VALUES ("Paola","Paolaguerra@hotmail.com", "55 11 99775-6795");
INSERT INTO clientes (nome, email, telefone) VALUES ("Grimaldo","grimas3245@gmail.com", "55 61 97685-4568");
INSERT INTO clientes (nome, email, telefone) VALUES ("Pedro","alvespedro342@hotmail.com", "55 19 99121-4587");

INSERT INTO produto_carros (nome, preco, marca) VALUES ("BYD Dolphin",140.000, "BYD");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("Renault Kwid",77.000, "Renault");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("FIAT Toro",140.000, "FIAT");
INSERT INTO produto_carros (nome, preco, marca) VALUES ("Volkswagen Nivus",140.000, "Volkswagen");

INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Pablo","123456");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Cintia","654321");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Lauana","098765");
INSERT INTO colaboradores (nome_colaborador, matricula) VALUES ("Olivia","567890");

INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (1,1);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (2,2);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (3,3);
INSERT INTO historicoDeCompras (id_cliente, id_venda) VALUE (4,4);

INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (1,1);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (2,2);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (3,3);
INSERT INTO historicoDeVendas (id_colaborador, id_venda) VALUE (4,4);