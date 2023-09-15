create database chatpet;
use chatpet;

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
crmv VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
);

CREATE TABLE hotel(
vagas INT,
cnpj VARCHAR(50),
tiposDeQuarto VARCHAR(50),
FK_usuario_e VARCHAR(50),
FOREIGN KEY (FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e)
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
FK_usuario_c INT,
FK_usuario_e INT,
FOREIGN KEY(FK_usuario_c) REFERENCES cliente(usuario),
FOREIGN KEY(FK_usuario_e) REFERENCES empreendedor(usuario),
PRIMARY KEY(FK_usuario_e, FK_usuario_c)
);

INSERT INTO 
cliente(nome, email, endereco, usuario, telefone) 
VALUES (
"Cleitin Barbosa", "barbosadelas@outlook.com", "Rua da Laranja", "@cleitoBarbosa", '(82) 2368-2312'
);


INSERT INTO 
cliente(nome, email, endereco, usuario, telefone) 
VALUES (
"Debora Marchado", "marchado@outlook.com", "Rua do sal", "@Debor4", '(82) 2597-2891'
);

INSERT INTO 
cliente(nome, email, endereco, usuario, telefone) 
VALUES (
"Eduarda Camelo", "dudinha@gmail.com", "Rua da santa", "@dudalind", '(82) 2597-2834'
);

INSERT INTO 
cliente(nome, email, endereco, usuario, telefone) 
VALUES (
"Enzo Duarate", "enzoduarte@gmail.com", "Rua da baguet", "@Enzo1", '(82) 9997-2891'
);
 
 INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Carlos Almeida", "suport.guccicao@gmail.com", "Rua da baguet", "@GucciCao", '(82) 2597-7897'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Gloria Maria", "suport.balancePet@gmail.com", "Rua da Palmeira", "@balancePet", '(82) 9093-2891'
);

 INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Pedro Camiro", "suport.vetpet@gmail.com", "Rua da Maria", "@vetPet", '(82) 9087-8675'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Patricia Amaral", "AmaralProd@gmail.com", "Rua da Nanci", "@AmaraPet", '(82) 3428-6731'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Rodrigo Jonathan", "hotel.DogSleep@gmail.com", "Rua do pet", "@RodrigoHoteis", '(82) 8928-6731'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Amanda Silva", "mandinha.baba@gmail.com", "Rua do Sol", "@AmandinhaAbaba", '(82) 3428-7521'
);

 INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"João Silva", "joao.adestrador@gmail.com", "Rua do Sol", "@joao.silva", '(82) 6098-6731'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Ellen Jainany", "ellen.vet@gmail.com", "Rua da Manga", "@ellen_vet", '(82) 3428-0600'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Antônio Cezar", "cezarveterinario@gmail.com", "Rua da Maçã", "@cezar_vet", '(82) 3428-6598'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Cleuza Venturini", "ventu.hotel@gmail.com", "Rua da Maçã", "@ventu.hotel", '(82) 9998-6731'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"David Lima", "dhslima@gmail.com", "Pajuçara", "@dhs.hotel", '(82) 6688-6731'
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone) 
VALUES (
"Luana Verçosa", "vercosa.shop@gmail.com", "Pajuçara", "@vercosaShop", '(82) 3428-6777'
);

INSERT INTO 
veterinario (crmv , FK_usuario_e) VALUES 
('12937',  "@cezar_vet"),
('36555', "@ellen_vet"),
('08547',  "@vetPet");

INSERT INTO 
baba (valor, cpf, FK_usuario_e) VALUES 
(100.00, 12937243002, "@AmaraPet"),
(85.00, 36559576027, "@AmandinhaAbaba"),
(200.00, 08547028064, "@joao.silva");

INSERT INTO 
 hotel (vagas, cnpj, tiposDeQuarto , FK_usuario_e) VALUES 
(100, '25355323000129','Básico, Intermediario, Premium',  "@RodrigoHoteis"),
(250, '48008922000171', "Bronze, Prata, Ouro","@ventu.hotel"),
(35, '67946428000100',"Premium",  "@dhs.hotel");

INSERT INTO 
 petshop (vagas, cnpj,  FK_usuario_e) VALUES 
(70, '44662444000168', "@vercosaShop"),
(290, '16626669000123', "@balancePet"),
(120, '37658938000103', "@GucciCao");
