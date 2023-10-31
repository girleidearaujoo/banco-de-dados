INSERT INTO 
cliente(nome, email, endereco, usuario, telefone, historico, senha) VALUES
 ("Cleitin Barbosa", "barbosadelas@outlook.com", "Rua da Laranja", "@cleitoBarbosa", '(82) 2368-2312', "PetShop GucciCão e PetShop BalancePet", 847898),
 ("Debora Marchado", "marchado@outlook.com", "Rua do sal", "@Debor4", '(82) 2597-2891', "PetShop GucciCão e Babá Amanda Silva", 123456),
 ("Eduarda Camelo", "dudinha@gmail.com", "Rua da santa", "@dudalind", '(82) 2597-2834', "Hotel Rodrigo Jonathan e PetShop BalancePet", 748596),
 ("Enzo Duarte", "enzoduarte@gmail.com", "Rua da baguet", "@Enzo1", '(82) 9997-2891', "PetShop Luana Verçosa e Babá Patricia Amaral", 857412);
 
INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha, categoria) VALUES 
("Carlos Almeida", "suport.guccicao@gmail.com", "Rua da baguet", "@GucciCao", '(82) 2597-7897', 966718, 'PetShop'),
("Gloria Maria", "suport.balancePet@gmail.com", "Rua da Palmeira", "@balancePet", '(82) 9093-2891', 145269, 'PetShop'),
("Pedro Camiro", "suport.vetpet@gmail.com", "Rua da Maria", "@vetPet", '(82) 9087-8675', 465213, 'Veterinário'),
("Patricia Amaral", "AmaralProd@gmail.com", "Rua da Nanci", "@AmaraPet", '(82) 3428-6731', 456912, 'Babá'),
("Rodrigo Jonathan", "hotel.DogSleep@gmail.com", "Rua do pet", "@RodrigoHoteis", '(82) 8928-6731', 134506, 'Hotel'),
("Amanda Silva", "mandinha.baba@gmail.com", "Rua do Sol", "@AmandinhaAbaba", '(82) 3428-7521', 120566, 'Babá'),
("João Silva", "joao.adestrador@gmail.com", "Rua do Sol", "@joao.silva", '(82) 6098-6731', 061205, 'Babá'),
("Ellen Jainany", "ellen.vet@gmail.com", "Rua da Manga", "@ellen_vet", '(82) 3428-0600', 051206, 'Veterinário'),
("Antônio Cezar", "cezarveterinario@gmail.com", "Rua da Maçã", "@cezar_vet", '(82) 3428-6598', 342864, 'Veterinário'),
("Cleuza Venturini", "ventu.hotel@gmail.com", "Rua da Maçã", "@ventu.hotel", '(82) 9998-6731', 999867, 'Hotel'),
("David Lima", "dhslima@gmail.com", "Pajuçara", "@dhs.hotel", '(82) 6688-6731', 668867, 'Hotel'),
("Luana Verçosa", "vercosa.shop@gmail.com", "Pajuçara", "@vercosaShop", '(82) 3428-6777', 412987, 'PetShop');

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
(100, '25355323000129','Básico, Intermediario, Premium', 8, 22, 5 ,"@RodrigoHoteis"),
(250, '48008922000171', "Bronze, Prata, Ouro", 10, 18, 4, "@ventu.hotel"),
(35, '67946428000100',"Premium", 8, 24, 5,  "@dhs.hotel"),
(47, '14547896040100',"Simples", 7, 20, 3,  "@ellen_vet");

INSERT INTO 
petshop (vagas, cnpj,  FK_usuario_e) VALUES 
(70, '44662444000168', "@vercosaShop"),
(290, '16626669000123', "@balancePet"),
(120, '37658938000103', "@GucciCao");

INSERT INTO transacao (valor, tipo, FK_usuario_c, FK_usuario_e) VALUES 
(300, 'pix','@Enzo1', "@vercosaShop"),
(80, 'debito','@Enzo1', "@GucciCao"),
(44, 'pix','@Debor4',  "@GucciCao");
