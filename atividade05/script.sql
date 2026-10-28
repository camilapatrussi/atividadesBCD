-- Atividade prática MySQL DML (DELETE)

-- 1. Excluir o cliente que possui o código 5
USE vendas_informatica;
SELECT *
FROM venda
WHERE id_cliente = 5;

DELETE FROM venda
WHERE id_cliente = 5;

DELETE FROM cliente
WHERE id_cliente = 5;

-- 2. Excluir todos os clientes do estado de SC
USE vendas_informatica;
DELETE FROM cliente
WHERE estado = 'SC'
AND id_cliente NOT IN (
    SELECT id_cliente
    FROM venda
);

-- 3. Excluir todos os produtos da marca LG
USE vendas_informatica;
DELETE FROM venda
WHERE id_produto IN (
    SELECT id_produto
    FROM produto
    WHERE marca = 'LG'
);

DELETE FROM produto
WHERE marca = 'LG';

-- 4. Excluir os produtos com códigos 3, 5 e 10
USE vendas_informatica;
DELETE FROM venda
WHERE id_produto IN (3, 5, 10);


DELETE FROM produto
WHERE id_produto IN (3, 5, 10);

-- 5. Excluir as vendas cujo desconto seja 0
USE vendas_informatica;
DELETE FROM venda
WHERE desconto_percentual = 0;

SELECT * FROM venda
WHERE desconto_percentual = 0;

-- 6. Excluir as vendas com status cancelada
USE vendas_informatica;
DELETE FROM venda
WHERE status_venda = 'cancelada';

SELECT * FROM venda
WHERE status_venda = 'cancelada';