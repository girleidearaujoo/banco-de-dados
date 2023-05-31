CREATE DATABASE chatpet;
USE chatpet;

CREATE TABLE cliente(
nome VARCHAR(50),
email VARCHAR(50),
endereco VARCHAR(50),
usuario VARCHAR(50),
telefone VARCHAR(50),
PRIMARY KEY (usuario)
);

CREATE TABLE empreendedor(
nome VARCHAR(50),
email VARCHAR(50),
endereco VARCHAR(50),
usuario VARCHAR(50),
telefone VARCHAR(50),
PRIMARY KEY (usuario)
);

CREATE TABLE transacao(
valor DOUBLE,
tipo VARCHAR(50),
FK_usuario_c VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
FOREIGN KEY (FK_usuario_c) REFERENCES cliente(usuario),
PRIMARY KEY(FK_usuario_c, FK_usuario_e)
);

CREATE TABLE veterinario(
crmv INT,
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE hotel(
vagas INT,
cnpj INT,
tiposDeQuarto VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE baba(
valor DOUBLE,
cpf INT,
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE petShop(
vagas INT,
cnpj INT,
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);
