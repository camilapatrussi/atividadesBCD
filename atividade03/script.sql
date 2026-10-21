--- atividades mysql-dml

--- 1-consulte todos os campos da entidade produto.
USE vendas_informatica;
SELECT * FROM produto;

--- 2-consulte o nome do produto, marca e estoque.
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto;

--- 3. Consultar nome, categoria, preço unitário e data de cadastro, em ordem alfabética por marca
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto;
