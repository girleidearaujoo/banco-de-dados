create database chatpet;
use chatpet;

CREATE TABLE cliente(
nome VARCHAR(50),
email VARCHAR(50),
endereco VARCHAR(50),
usuario VARCHAR(50),
telefone VARCHAR(50),
historico VARCHAR(100),
senha INT,
PRIMARY KEY (usuario)
);

CREATE TABLE empreendedor(
nome VARCHAR(50),
email VARCHAR(50),
endereco VARCHAR(50),
usuario VARCHAR(50),
telefone VARCHAR(50),
senha INT,
categoria VARCHAR(50),
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
crmv VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE hotel(
vagas INT,
cnpj VARCHAR(50),
tiposDeQuarto VARCHAR(50),
horario_inicio INT,
horario_termino INT,
avaliacao INT,
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e, cnpj)
);

CREATE TABLE baba(
valor DOUBLE,
cpf VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE petShop(
vagas INT,
cnpj VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE publicacao(
foto VARCHAR(1000),
likes INT,
legenda VARCHAR(1000),
comentarios VARCHAR(1000),
FK_usuario_c VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY(FK_usuario_c) REFERENCES cliente(usuario),
FOREIGN KEY(FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e, FK_usuario_c)
);

