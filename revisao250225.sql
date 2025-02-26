CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	data_nascimento VARCHAR(10)
);

CREATE TABLE professor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	especialidade VARCHAR(255)
);

CREATE TABLE curso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	professor_id INT NOT NULL,
	FOREIGN KEY (professor_id) REFERENCES professor(id)
);
-- as tabelas acima já foram criadas
-- a tabela matrícula é uma tabela pivô 

CREATE TABLE matricula (
	id INT PRIMARY KEY AUTO_INCREMENT,
	data_matricula VARCHAR(10) NOT NULL,
	aluno_id INT NOT NULL,
	FOREIGN KEY (aluno_id) REFERENCES aluno(id),
	curso_id INT NOT NULL,
	FOREIGN KEY (curso_id) REFERENCES curso(id)
);

CREATE TABLE avaliacao (
id INT PRIMARY KEY AUTO_INCREMENT,
nota DECIMAL(2,2) NOT NULL,
data_avaliacao VARCHAR(10) NOT NULL,
matricula_id INT NOT NULL,
FOREIGN KEY (matricula_id) REFERENCES matricula(id)
);

INSERT INTO aluno (nome,email,data_nascimento) VALUES ("Fabiula","fernanda.aluno123@gmail.com","02/12/2005");
INSERT INTO aluno (nome,email,data_nascimento) VALUES ("Claudio","claudio.aluno321@gmail.com","09/11/2005");
INSERT INTO aluno (nome,email,data_nascimento) VALUES ("Paulinho","fernanda.aluno222@gmail.com","20/10/2005");
INSERT INTO aluno (nome,email,data_nascimento) VALUES ("Emily","fernanda.aluno111@gmail.com","28/09/2005");
SELECT * FROM aluno;

INSERT INTO professor (nome,email,especialidade) VALUES ("Marco","marco.prof789@gmail.com","Biologia"); 
INSERT INTO professor (nome,email,especialidade) VALUES ("Paola","paola.prof999@gmail.com","Física"); 
INSERT INTO professor (nome,email,especialidade) VALUES ("Karine","karine.prof888@gmail.com","Geometria"); 
INSERT INTO professor (nome,email,especialidade) VALUES ("Ildo","ildo.prof789@gmail.com","Dados"); 
SELECT * FROM professor;

INSERT INTO curso (nome,descricao,professor_id) VALUES ("Biologia Marinha","Voltado para o estudo da biologia marinha",1);
INSERT INTO curso (nome,descricao,professor_id) VALUES ("Física Quântica","Voltado para o estudo do atômo e suas propriedades",2);
INSERT INTO curso (nome,descricao,professor_id) VALUES ("Geometria Analítica","Voltado para o estudo da geometria aprofundada",3);
INSERT INTO curso (nome,descricao,professor_id) VALUES ("Banco de Dados","Voltado para o estudo de banco de dados",4);
SELECT * FROM curso;

-- SELECT * ,curso.nome FROM curso JOIN professor ON professor.nome;

-- 5. Qual a média de notas dos alunos em um curso específico?
-- SELECIONAR, CONSULTAR, BUSCAR -> TODAS SÃO SELECT
-- tabela.coluna
-- avg -> pega a média
 SELECT curso.nome , AVG(avaliacao.nota) from curso JOIN matricula on curso.id = matricula.id join avaliacao on maticula.id = avaliacao.id;