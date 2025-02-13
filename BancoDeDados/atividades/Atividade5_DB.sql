create database useroupa;
use useroupa;
create table roupas (peça varchar(100), tamanho varchar(5), cor varchar(100),preco decimal(6,2));

insert into roupas(peça,tamanho,cor,preco) values("Camisa Polo","M","Cinza",49.99); 
insert into roupas(peça,tamanho,cor,preco) values("Jaqueta Jeans","PP","Pretp",175.00); 
insert into roupas(peça,tamanho,cor,preco) values("Meia","36","Azul",10.00);
insert into roupas(peça,tamanho,cor,preco) values("Leggin","GG","Vermelho",29.99);
insert into roupas(peça,tamanho,cor,preco) values("Luvas","M","Amarelo",12.99);
insert into roupas(peça,tamanho,cor,preco) values("Calça","40","Bege",119.99);

select * from roupas;
select * from roupas where cor = "Cinza";