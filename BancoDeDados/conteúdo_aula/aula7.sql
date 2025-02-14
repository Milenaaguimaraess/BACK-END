CREATE DATABASE relacionamento; 
USE relacionamento;

-- one to one (um pra um) -> uma tabela para outra
CREATE TABLE alunos (
 id INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 turma VARCHAR(5)
 );
 
INSERT INTO alunos(nome,turma) VALUES ("Juan","002M");
INSERT INTO alunos(nome,turma) VALUES ("Rarysson","003V");
INSERT INTO alunos(nome,turma) VALUES ("Giovanna","003V");
  
  CREATE TABLE contatos (
	 id INT PRIMARY KEY AUTO_INCREMENT,
     telefone VARCHAR(20),
	 aluno_id INT NOT NULL,
     FOREIGN KEY (aluno_id) REFERENCES alunos(id)
     );
     
INSERT INTO contatos(telefone,aluno_id) values ("(61)1234567",1);
INSERT INTO contatos(telefone,aluno_id) values ("(61)7654321",1);
INSERT INTO contatos(telefone,aluno_id) values ("(61)3333333",2);
INSERT INTO contatos(telefone,aluno_id) values ("(61)4343545",3);
INSERT INTO contatos(telefone,aluno_id) values ("(61)4657833",3);
INSERT INTO contatos(telefone,aluno_id) values ("(61)0989787",3);
  
  SELECT * FROM alunos;
  SELECT * FROM contatos;
  SELECT * FROM contatos WHERE aluno_id = 3;
  SELECT * ,alunos.nome , alunos.turma , contatos.telefone FROM alunos JOIN contatos ON contatos.aluno_id;
  
  -- ONE TO MANY (um pra muitos)
CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100)
        );
        
CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    valorTotal FLOAT, 
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
    );
    
INSERT INTO clientes(nome) VALUES ("Zélia");
INSERT INTO pedidos(valorTotal,cliente_id) VALUES (80,1);
INSERT INTO pedidos(valorTotal,cliente_id) VALUES (30,1);
INSERT INTO pedidos(valorTotal,cliente_id) VALUES (220,1);
-- SISTEMA DE BAIXA, CUPOM, TV
  