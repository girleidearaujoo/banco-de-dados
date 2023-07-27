CREATE DATABASE loja;
USE loja;
/*
CLIENTES(cidade, nome, id_cliente)
PRODUTOS(nome, preço, id_produto, id_categoria)
CATEGORIAS(nome, id_categoria)
PEDIDOS(data, valor, id_pedido, id_cliente)
PEDIDO_PRODUTO(id_pedido, id_produto, quantidade)
*/

CREATE TABLE clientes(
	cidade VARCHAR(50),
    nome VARCHAR(50),
    id_cliente INT auto_increment,
    PRIMARY KEY(id_cliente)
);

CREATE TABLE produtos(
	nome VARCHAR(50),
    preco DOUBLE,
    id_produto INT auto_increment,
    FK_id_cliente INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (FK_id_cliente) REFERENCES clientes(id_cliente )
);

CREATE TABLE categoria(
	nome VARCHAR(50),
    id_categoria INT auto_increment,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE pedidos(
	data VARCHAR(50),
    valor DOUBLE,
    id_pedido INT auto_increment,
    FK_id_cliente INT,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (FK_id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE pedido_produto(
	quantidade INT,
    FK_id_produto int,
    FK_id_pedido INT,
    PRIMARY KEY (FK_id_produto, FK_id_pedido),
    FOREIGN KEY (FK_id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (FK_id_produto) REFERENCES produtos(id_produto)
);