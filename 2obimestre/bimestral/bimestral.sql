-- Qual é o preço médio, máximo e mínimo dos produtos?
SELECT MAX(preco) AS maior_preço, MIN(preco) AS menor_preço, AVG(preco) AS preço_médio FROM produtos;

-- Quantos produtos existem em cada categoria?
SELECT categoria, COUNT(*) AS quant_produtos FROM produtos GROUP BY categoria;

-- Quais são as categorias distintas existentes na tabela de produtos?
SELECT DISTINCT categoria FROM produtos ORDER BY categoria;

-- Quais categorias possuem mais de 2 produtos?
SELECT categoria, COUNT(*) AS quant_produtos FROM produtos GROUP BY categoria HAVING COUNT(*) > 2;

-- Quais são os produtos que possuem a palavra "Livro" em seu nome?
SELECT COUNT(*) FROM produtos WHERE nome = "Livro";
SELECT nome FROM produtos WHERE nome IN ("Livro"); -- (duas formas ;) fica a preferência do senhor)

-- Quais são os 3 produtos mais caros?
SELECT nome, max(preco) as preços FROM produtos GROUP BY nome order by preços DESC LIMIT 3;

-- Quais produtos têm o preço dentro do intervalo de R$ 50 a R$ 100?
SELECT nome FROM produtos WHERE preco >= 50.00 AND preco < 100.00;

-- Quais são os produtos com ID 1, 3 e 5?
SELECT nome FROM produtos WHERE ID IN (1,3,5);

-- Qual é o valor total gasto em produtos da categoria "Eletrônicos"?
SELECT SUM(PRECO) as soma_eletrônicos FROM produtos WHERE CATEGORIA IN ("Eletrônicos");

-- Quais são os produtos que pertencem às categorias "Vestuário" ou "Acessórios" e possuem um preço entre R$ 30 e R$ 50?
SELECT nome FROM produtos WHERE categoria IN ("Acessórios") OR categoria IN ("Vestuários") and preco >= 30.00 AND preco < 50.00;