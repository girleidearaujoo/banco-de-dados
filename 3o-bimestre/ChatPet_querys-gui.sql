# Cadastros
INSERT INTO 
cliente(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Enzo Duarate", "enzoduarte@gmail.com", "Rua da baguet", "@Enzo1", '(82) 9997-2891', 857412 
);
INSERT INTO 
empreendedor(nome, email, endereco, usuario, telefone, senha) 
VALUES (
"Pedro Camiro", "suport.vetpet@gmail.com", "Rua da Maria", "@vetPet", '(82) 9087-8675', 465213
);

# Publicacoes
SELECT * FROM publicacao;

# Info de perfil
SELECT * FROM cliente;

# Info das empresas
SELECT * FROM empreendedor;

# Criando publicacoes
INSERT INTO 
publicaco(foto, legenda, FK_usuario_c)
VALUES (
"foto.jpg", "indo ali", "@Enzo1"
);
