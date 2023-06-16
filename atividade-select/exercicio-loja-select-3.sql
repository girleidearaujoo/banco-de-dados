# GROUP BY
# Quantos clientes de cada cidade a loja tem?
SELECT estado, COUNT(*) FROM cliente GROUP BY estado;
# Quantos itens tem cada pedido?
SELECT FK_num_pedido AS pedido, SUM(quantidade) AS soma FROM itempedido GROUP BY FK_num_pedido;
# Quantos pedidos cada vendedor fez?
SELECT FK_cod_vendedor as vendendor, COUNT(*) as quant FROM pedido GROUP BY FK_cod_vendedor;
# Qual a soma de produtos e a média de produtos em cada pedido?
SELECT FK_num_pedido AS pedido, SUM(quantidade) AS soma, ROUND(AVG(quantidade),2) AS contagem FROM itempedido GROUP BY FK_num_pedido;
# Qual o maior, menor e médio prazo de entrega de cada vendedor?
SELECT FK_cod_vendedor, MAX(prazo_entrega) AS maior,MIN(prazo_entrega) AS menor, ROUND(AVG(prazo_entrega),2) AS média FROM pedido GROUP BY FK_cod_vendedor;
# Quantos pedidos cada item está incluido?
SELECT FK_cod_produto as item, COUNT(*) as quant FROM itempedido GROUP BY FK_cod_produto;
# Top 3 dos produtos mais vendidos
SELECT FK_cod_produto, SUM(quantidade) as soma FROM itempedido GROUP BY FK_cod_produto order by soma DESC LIMIT 3;