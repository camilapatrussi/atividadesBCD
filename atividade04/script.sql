--- ATIVIDADE PRÁTICA DE BANCO DE DADOS MYSQL - DML

-- 1. Atualizar todas as cidades do estados de DF e ES para Senailandia.
USE vendas_informatica;
UPDATE cliente
SET cidade = "Senailandia"
WHERE estado IN ("DF", "ES");

-- 2. Atualizar a data de cadastro dos clientes de Manaus
USE vendas_informatica;
UPDATE cliente
SET data_Cadastro = "2026-01-01"
WHERE cidade = "Manaus";

--3. Alterar o nome do cliente com código 10
USE vendas_informatica;
UPDATE cliente
SET nome_cliente = "Michael Jackson"
WHERE id_cliente = 10;

-- 4. Alterar o nome do produto com código USE vendas_informatica;
USE vendas_informatica;
UPDATE produto
SET nome_produto = "Notebook Lenovo IdeaPad 7"
WHERE id_produto = 1;

-- 5. Alterar o preço dos notebooks da marca DELL para 4999.99
USE vendas_informatica;
UPDATE produto
SET preco_unitario = 4999.99
WHERE marca = 'DELL'
AND categoria = 'Notebook';

-- 6. Atualizar o desconto percentual para 0.01 quando a quantidade for a partir de 2 unidades 
USE vendas_informatica;
UPDATE venda
SET desconto_percentual = 0.01
WHERE quantidade >= 2;
