INSERT  INTO  clientes(nome, cidade) VALUES 
('CLeiton Ferreira', 'Arapirca') ,
('Maria Silva', 'Maceió'),
('Rebeca', 'Rio Largo');
 
INSERT  INTO  categoria(nome) VALUES 
('Roupa') ,
('Bebida'),
('Comida');
 
INSERT  INTO  pedidos(data, valor, FK_id_cliente) VALUES 
('09/08/23', 20, 3) ,
('08/09/23', 6, 2),
('23/04/22', 5, 1);
 
 INSERT  INTO  produtos(nome, preco, FK_id_cliente) VALUES 
('Roupa', 40, 3) ,
('Sprite', 9, 2),
('PF', 10, 1);
 
 