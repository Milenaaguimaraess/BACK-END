create database banco;
use banco;

create table contas (id int primary key not null auto_increment,
nome varchar(100) not null,
sobrenome varchar(100) not null,
saldo decimal(6,2) not null,
dataNas date not null );

insert into contas (nome,sobrenome,saldo,dataNas) values ("Heleonora","Gomez",5000.00,"2001-11-22");
insert into contas (nome,sobrenome,saldo,dataNas) values ("Juanito","Braga",9000.00,"2005-02-25");
insert into contas (nome,sobrenome,saldo,dataNas) values ("Stelar","Silva",2000.00,"2003-05-03");
 
 select * from contas;