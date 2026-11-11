-- Atividade 2_2_11 DML LIKE(11)
-- 1. Produtos cujo nome começa com a letra D
USE vendas_informatica;
SELECT * FROM produto WHERE nome_produto LIKE "D%";

-- 2. Nome, marca e estoque onde a marca termina com E
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto WHERE marca LIKE "%E";

-- 3. Consulte o nome do produto, marca e preço unitário onde o nome do produto contenha a palavra “Gamer”.
USE vendas_informatica;
SELECT nome_produto, marca, preco_unitario
FROM produto
WHERE nome_produto LIKE "%Gamer%";

-- 4. Consulte todos os campos (atributos) da entidade cliente onde o nome do cliente contenha o sobrenome “Barbosa”.
USE vendas_informatica;
SELECT *
FROM cliente
WHERE nome_cliente LIKE "%Barbosa%";

-- 5. Consulte o nome do cliente, data da venda, o preço unitário e a forma de pagamento onde o nome do cliente comece com a letra “C”.
USE vendas_informatica;
SELECT cliente.nome_cliente,
       venda.data_venda,
       venda.preco_unitario_venda,
       venda.forma_pagamento
FROM cliente
INNER JOIN venda
ON cliente.id_cliente = venda.id_cliente
WHERE cliente.nome_cliente LIKE "C%";

-- 6. Consulte o nome do produto, preço, ID da venda e forma de pagamento onde a forma de pagamento seja PIX ou Boleto, onde o nome do produto contenha a palavra “Polegada”.
USE vendas_informatica;
SELECT produto.nome_produto,
       produto.preco_unitario,
       venda.id_venda,
       venda.forma_pagamento
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto
WHERE (venda.forma_pagamento = "PIX"
OR venda.forma_pagamento = "Boleto")
AND produto.nome_produto LIKE "%Polegada%";

-- 7. Consulte o nome do produto, nome do cliente, desconto e forma de pagamento em ordem alfabética (crescente) por status da venda, onde o nome do produto contenha “Placa” ou “Notebook” ou o nome do cliente contenha o nome “Ana”.
USE vendas_informatica;
SELECT produto.nome_produto,
       cliente.nome_cliente,
       venda.desconto_percentual,
       venda.forma_pagamento
FROM produto
INNER JOIN venda
ON produto.id_produto = venda.id_produto
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
WHERE produto.nome_produto LIKE "%Placa%"
OR produto.nome_produto LIKE "%Notebook%"
OR cliente.nome_cliente LIKE" %Ana%"
ORDER BY venda.status_venda ASC;

-- Atividades_DML_BETWEEN(12)

-- 1. Consulte todos os campos (atributos) da entidade produto onde contemplem todo o mês de Março de 202
USE vendas_informatica;
SELECT *
FROM produto
WHERE data_cadastro >= "2024-03-01"
AND data_cadastro < "2024-04-01";

-- 2. Consulte o nome do produto, marca, estoque e data de cadastro onde os produtos tenham sido cadastrados nos meses de Janeiro, fevereiro e Março de 2024.
USE vendas_informatica;
SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
WHERE data_cadastro >= "2024-01-01"
AND data_cadastro < "2024-04-01";

-- 3. Consulte todos os campos (atributos) da tabela cliente para clientes cadastrados no mês de Janeiro de 2023.
USE vendas_informatica;
SELECT *
FROM cliente
WHERE data_cadastro >= "2023-01-01"
AND data_cadastro < "2023-02-01";

-- 4. Consulte o nome, o email, a cidade, estado e a data de cadastro para os clientes cadastrados na primeira quinzena de junho de 2023.
USE vendas_informatica;
SELECT *
FROM cliente
WHERE data_cadastro >= "2023-01-01"
AND data_cadastro < "2023-02-01";

-- 5. Consulte todos os campos (atributos) da entidade venda onde a data de venda contemple todo o mês de maio de 2025.
USE vendas_informatica;
SELECT *
FROM venda
WHERE data_venda >= "2025-05-01"
AND data_venda < "2025-06-01";

-- 6. Consulte o nome do cliente, data da venda, o preço e a forma de pagamento para as vendas realizadas de 24/12/2025 até 15/01/2026 do maior preço para o menor.
USE vendas_informatica;
SELECT
    cliente.nome_cliente,
    venda.data_venda,
    venda.preco_unitario_venda,
    venda.forma_pagamento
FROM venda 
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda >= "2025-12-24"
AND venda.data_venda < "2026-01-16"
ORDER BY venda.preco_unitario_venda DESC;

-- 7. Consulte o nome do cliente, email, nome do produto, marca, categoria, forma de pagamento, data da venda e status da venda da maior venda para a menor onde o status seja Cancelada ou Concluída contemplando todo o período de venda do mês de Dezembro de 2025.
USE vendas_informatica;
SELECT
    cliente.nome_cliente,
    cliente.email,
    produto.nome_produto,
    produto.marca,
    produto.categoria,
    venda.forma_pagamento,
    venda.data_venda,
    venda.status_venda
FROM venda 
INNER JOIN cliente 
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto 
ON venda.id_produto = produto.id_produto
WHERE venda.data_venda >= "2025-12-01"
AND venda.data_venda < "2026-01-01"
AND venda.status_venda IN ("Cancelada", "Concluída")
ORDER BY (venda.preco_unitario_venda * venda.quantidade) DESC;