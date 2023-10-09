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
cliente(nome, email, endereco, usuario, telefone, historico, senha) 
VALUES (
"Cleitin Barbosa", "barbosadelas@outlook.com", "Rua da Laranja", "@cleitoBarbosa", '(82) 2368-2312', "PetShop GucciCão e PetShop BalancePet", 847898
);


INSERT INTO 
cliente(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Debora Marchado", "marchado@outlook.com", "Rua do sal", "@Debor4", '(82) 2597-2891', "PetShop GucciCão e Babá Amanda Silva", 123456
);

INSERT INTO 
cliente(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Eduarda Camelo", "dudinha@gmail.com", "Rua da santa", "@dudalind", '(82) 2597-2834', "Hotel Rodrigo Jonathan e PetShop BalancePet", 748596
);

INSERT INTO 
cliente(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Enzo Duarate", "enzoduarte@gmail.com", "Rua da baguet", "@Enzo1", '(82) 9997-2891', "PetShop Luana Verçosa e Babá Patricia Amaral", 857412
);
 
INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Carlos Almeida", "suport.guccicao@gmail.com", "Rua da baguet", "@GucciCao", '(82) 2597-7897', 966718
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Gloria Maria", "suport.balancePet@gmail.com", "Rua da Palmeira", "@balancePet", '(82) 9093-2891', 145269
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Pedro Camiro", "suport.vetpet@gmail.com", "Rua da Maria", "@vetPet", '(82) 9087-8675', 465213
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Patricia Amaral", "AmaralProd@gmail.com", "Rua da Nanci", "@AmaraPet", '(82) 3428-6731', 456912
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Rodrigo Jonathan", "hotel.DogSleep@gmail.com", "Rua do pet", "@RodrigoHoteis", '(82) 8928-6731', 134506
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Amanda Silva", "mandinha.baba@gmail.com", "Rua do Sol", "@AmandinhaAbaba", '(82) 3428-7521', 120566
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"João Silva", "joao.adestrador@gmail.com", "Rua do Sol", "@joao.silva", '(82) 6098-6731', 061205
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Ellen Jainany", "ellen.vet@gmail.com", "Rua da Manga", "@ellen_vet", '(82) 3428-0600', 051206
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Antônio Cezar", "cezarveterinario@gmail.com", "Rua da Maçã", "@cezar_vet", '(82) 3428-6598', 342864
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Cleuza Venturini", "ventu.hotel@gmail.com", "Rua da Maçã", "@ventu.hotel", '(82) 9998-6731', 999867
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"David Lima", "dhslima@gmail.com", "Pajuçara", "@dhs.hotel", '(82) 6688-6731', 668867
);

INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Luana Verçosa", "vercosa.shop@gmail.com", "Pajuçara", "@vercosaShop", '(82) 3428-6777', 412987
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
hotel (vagas, cnpj, tiposDeQuarto, horario_inicio, horario_termino, avaliacao,  FK_usuario_e) VALUES 
(100, '25355323000129','Básico, Intermediario, Premium', 8, 22, 5  "@RodrigoHoteis"),
(250, '48008922000171', "Bronze, Prata, Ouro", 10, 18, 4, "@ventu.hotel"),
(35, '67946428000100',"Premium", 8, 24, 5,  "@dhs.hotel");
(47, '14547896040100',"Simples", 7, 20, 3,  "@ejsv.hotel");


INSERT INTO 
petshop (vagas, cnpj,  FK_usuario_e) VALUES 
(70, '44662444000168', "@vercosaShop"),
(290, '16626669000123', "@balancePet"),
(120, '37658938000103', "@GucciCao");

INSERT INTO transacao (valor, tipo, FK_usuario_c, FK_usuario_e) VALUES 
(300, 'pix','@Enzo1', "@vercosaShop"),
(80, 'debito','@Enzo1', "@GucciCao"),
(44, 'pix','@Debor4',  "@GucciCao");
