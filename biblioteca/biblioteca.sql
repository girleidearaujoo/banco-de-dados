create database biblioteca;
use biblioteca;


CREATE TABLE autores(
nome VARCHAR(50),
id_autor INT auto_increment,
data_nascimento VARCHAR(50),
nacionalidade VARCHAR(50),
PRIMARY KEY (id_autor)
);

CREATE TABLE categorias(
nome VARCHAR(50),
id_categoria INT auto_increment,
PRIMARY KEY(id_categoria)
);

CREATE TABLE livros(
titulo VARCHAR(50),
FK_id_autor INT,
FK_id_categoria INT,
id_livro INT auto_increment,
anoDePublicacao VARCHAR(50),
foreign key(FK_id_autor) references autores(id_autor),
foreign key(FK_id_categoria) references categorias(id_categoria),
PRIMARY KEY (id_livro, FK_id_autor,FK_id_categoria)
);

INSERT INTO autores(nome, data_nascimento, nacionalidade) VALUES
('Collen Hover','11/12/1979','estadunidense'),
('Taylor Jenkins', '20/12/1983', 'estadunidense'),
('Arthur Conan Doyle', '22/05/1859', 'britânico');

INSERT INTO categorias(nome) VALUES
('Romance'),
('Mistério'),
('Aventura');

INSERT INTO livros(titulo, FK_id_autor, FK_id_categoria, anoDePublicacao) VALUES
('É assim que acaba', 1, 1, '29/02/2016'),
('Verity', 1, 1, '07/12/2018'),
('Daisy Jones & The Six', 2, 1, '05/03/2019'),
('Os sete maridos de Evelyn Hugo', 2, 1, '13/06/2017'),
('Sherlock Holmes: Um estudo em vermelho', 3, 2, '1887'),
('Mundo Perdido', 3, 3, '1912');