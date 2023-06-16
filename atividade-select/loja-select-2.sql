# 1 
SELECT MAX(valor_unitario) AS maior, MIN(valor_unitario) AS menor FROM produto;
# 2
SELECT ROUND(AVG(valor_unitario), 2) FROM produto;
# 3
SELECT COUNT(*) FROM pedido WHERE FK_cod_vendedor = 3;
# 4
SELECT ROUND(AVG(quantidade), 2) FROM itempedido;
# 5
SELECT (valor_unitario*10) FROM produto WHERE cod_produto=1;
# 6
SELECT ROUND((salario_fixo+salario_fixo*0.12), 2) FROM vendedor WHERE cod_vendedor=1;
# 7
SELECT SUM(quantidade) AS soma FROM itempedido;
