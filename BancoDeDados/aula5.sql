create database coresDoBrasil;
use coresDoBrasil;

create table clientes (
	nome VARCHAR(100), 
    email VARCHAR(255) UNIQUE, 
    telefone VARCHAR(18)
    );
    
    INSERT INTO clientes(nome,email,telefone) values ("Juscelio","aasasaas@gmail.com","(77)1212121");
    INSERT INTO clientes(nome,email,telefone) values ("Milena","","");
    INSERT INTO clientes(nome,email,telefone) values ("Juju","teste","");
    
    alter table clientes modify column email varchar(255) unique not null;
    
    SELECT * FROM clientes;
    
    -- produto
create table produto(
	id int unique not null,
	nome varchar(255) not null,
	peso decimal(6,2) not null,
	cor varchar(100)
);
    
    insert into produto values(1, "Crene hidratante cerave",469.00,"Branco");
     insert into produto values(2, "pão",500,"");
    select * from produto;
    
create table pedidos(
	id int primary key not null auto_increment,
	pagamento varchar(80),
	valor decimal(6,2),
	produto_id int not null,
   foreign key (produto_id) references produto(id)
);
 
insert into pedidos(pagamento, valor,produto_id) values ("Cheque",59.99,1); 
select * from pedidos;
select * from produto where id = 1

 