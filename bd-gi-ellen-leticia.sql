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

INSERT INTO 
cliente(nome, email, endereco, usuario) 
VALUES (
"Cleitin Barbosa", "barbosadelas@outlook.com", "Rua da Laranja", "@cleitoBarbosa"
);


INSERT INTO 
cliente(nome, email, endereco, usuario) 
VALUES (
"Debora Marchado", "marchado@outlook.com", "Rua do sal", "@Debor4"
);

INSERT INTO 
cliente(nome, email, endereco, usuario) 
VALUES (
"Eduarda Camelo", "dudinha@gmail.com", "Rua da santa", "@dudalind"
);

INSERT INTO 
cliente(nome, email, endereco, usuario) 
VALUES (
"Enzo Duarate", "enzoduarte@gmail.com", "Rua da baguet", "@Enzo1"
);
 
 INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Carlos Almeida", "suport.guccicao@gmail.com", "Rua da baguet", "@GucciCao"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Gloria Maria", "suport.balancePet@gmail.com", "Rua da Palmeira", "@balancePet"
);

 INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Pedro Camiro", "suport.vetpet@gmail.com", "Rua da Maria", "@vetPet"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Patricia Amaral", "AmaralProd@gmail.com", "Rua da Nanci", "@AmaraPet"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Rodrigo Jonathan", "hotel.DogSleep@gmail.com", "Rua da pet", "@RodrigoHoteis"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Amanda Silva", "mandinha.baba@gmail.com", "Rua do Sol", "@AmandinhaAbaba"
);

 INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"João Silva", "joao.adestrador@gmail.com", "Rua do Sol", "@joao.silva"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Ellen Jainany", "ellen.vet@gmail.com", "Rua ds Manga", "@ellen_vet"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Antônio Cezar", "cezarveterinario@gmail.com", "Rua ds Maçã", "@cezar_vet"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Cleuza Venturini", "ventu.hotel@gmail.com", "Rua da Maçã", "@ventu.hotel"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"David Lima", "dhslima@gmail.com", "Pajuçara", "@dhs.hotel"
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"Luana Verçosa", "vercosa.shop@gmail.com", "Pajuçara", "@vercosaShop"
);


 INSERT INTO 
empreendedor(nome, email, endereco, usuario) 
VALUES (
"GucciCao", "suport.guccicao@gmail.com", "Rua da baguet", "@GucciCao"
);
