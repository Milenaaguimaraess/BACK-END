CREATE DATABASE livrariaDB;
USE livrariaDB;

CREATE TABLE Autores ( 
	id_autor INT primary KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100)
    );
    
CREATE TABLE livros (
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    id_autor INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);    

INSERT INTO Autores (nome,nacionalidade) VALUES ("Sarah J. Mass","Estadunidense");
INSERT INTO Autores (nome,nacionalidade) VALUES ("Rebecca Yarros","Estadunidense");
INSERT INTO Autores (nome,nacionalidade) VALUES ("Monteiro Lobato","Brasileiro");
INSERT INTO Autores (nome,nacionalidade) VALUES ("Domingos Pellegrini","Brasileiro");

INSERT INTO livros (titulo,ano_publicacao,id_autor) VALUES ("Corte de Espinhos e Rosas",2016,1);
INSERT INTO livros (titulo,ano_publicacao,id_autor) VALUES ("Trono de Video",2013,1);
INSERT INTO livros (titulo,ano_publicacao,id_autor) VALUES ("Quarta Asa",2023,2);
INSERT INTO livros (titulo,ano_publicacao,id_autor) VALUES ("Turma da Mônica Jovem",2012,3);
INSERT INTO livros (titulo,ano_publicacao,id_autor) VALUES ("A Árvore que dava Dinheiro",1991,4);

SELECT * FROM Autores;
SELECT * FROM livros;

SELECT * FROM livros inner JOIN Autores ON livros.id_autor = Autores.id_autor;
SELECT * FROM livros INNER JOIN Autores ON livros.id_livro = Autores.id_autor;
SELECT * FROM livros WHERE id_autor = "1"; 