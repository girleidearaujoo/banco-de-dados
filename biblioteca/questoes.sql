# Questão 1
ALTER TABLE livros ADD COLUMN editora VARCHAR(50);
# Questão 2
ALTER TABLE livros DROP COLUMN anoDePublicacao;
# Questão 3
UPDATE autores SET nome='Taylor Jenkins Red' WHERE id_autor=2;
# Questão 4
UPDATE livros SET anoDePublicacao='2023' WHERE FK_id_categoria=1;
# Questão 5
DELETE FROM livros WHERE id_livro= 3;