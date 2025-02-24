INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (1,1,1,"25/10/2021","12:24 PM","22/10/2021","10:00 AM",2);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (2,2,2,"12/11/2021","15:25 PM","11/11/2021","¨16:17 PM",3);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (3,3,3,"17/11/2021","12:24 PM","10/11/2021","09:45 AM",4);
INSERT INTO vendas (id_carro, id_cliente, id_colaborador, dataDaVenda, horaDaVenda, dataDareserva, horaDaReserva, quantidade) VALUES (4,4,4,"25/10/2021","12:24 PM","15/10/2021","15:38 PM",1);

INSERT INTO clientes (nome, email, telefone) VALUES ("Fernanda","fefe@gmail.com", "55 77 9845-6765");
INSERT INTO clientes (nome, email, telefone) VALUES ("Paola","Paolaguerra@hotmail.com", "55 11 99775-6795");
INSERT INTO clientes (nome, email, telefone) VALUES ("Grimaldo","grimas3245@gmail.com", "55 61 97685-4568");
INSERT INTO clientes (nome, email, telefone) VALUES ("Pedro","alvespedro342@hotmail.com", "55 19 99121-4587");

INSERT INTO produto_carros (nome, preço, marca) VALUES ("BYD Dolphin",140.000, "BYD");
INSERT INTO produto_carros (nome, preço, marca) VALUES ("Renault Kwid",77.000, "Renault");
INSERT INTO produto_carros (nome, preço, marca) VALUES ("FIAT Toro",140.000, "FIAT");
INSERT INTO produto_carros (nome, preço, marca) VALUES ("Volkswagen Nivus",140.000, "Volkswagen");

INSERT INTO colaboradores (nome, matricula,id_venda) VALUES ("Pablo","123456",1);
INSERT INTO colaboradores (nome, matricula,id_venda) VALUES ("Cintia","654321",2);
INSERT INTO colaboradores (nome, matricula,id_venda) VALUES ("Lauana","098765",3);
INSERT INTO colaboradores (nome, matricula,id_venda) VALUES ("Olivia","567890",4);

INSERT INTO historicoDeCompras (id_cliente) VALUE (1);
INSERT INTO historicoDeCompras (id_cliente) VALUE (2);
INSERT INTO historicoDeCompras (id_cliente) VALUE (3);
INSERT INTO historicoDeCompras (id_cliente) VALUE (4);

