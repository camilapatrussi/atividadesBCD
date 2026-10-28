--- atividades mysql-dml

--- 1-consulte todos os campos da entidade produto.
USE vendas_informatica;
SELECT * FROM produto;

--- 2-consulte o nome do produto, marca e estoque.
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto;

--- 3. Consultar nome, categoria, preço unitário e data de cadastro, em ordem alfabética por marca
USE vendas_informatica;
SELECT nome_produto, categoria, preco_unitario, data_cadastro FROM produto
ORDER BY marca ASC;

--- 4. Consultar nome do produto, marca e estoque, da data de cadastro mais antiga para a mais recente
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto
ORDER BY data_cadastro ASC;

--- 5. Consultar todos os campos da tabela cliente
USE vendas_informatica;
SELECT * FROM cliente;

--- 6. Consultar nome, e-mail, cidade e estado do cliente
USE vendas_informatica;
SELECT nome_cliente, email, cidade, estado FROM cliente;

--- 7. Consultar nome, cidade e estado, em ordem alfabética por estado
USE vendas_informatica;
SELECT nome_cliente, cidade, estado
FROM cliente
ORDER BY estado ASC;

--- 8. Consultar nome, e-mail e estado, do cadastro mais antigo para o mais recente
USE vendas_informatica;
SELECT nome_cliente, email, estado
FROM cliente
ORDER BY data_cadastro ASC;

--- 9. Consultar todos os campos da tabela venda
USE vendas_informatica;
SELECT * FROM venda;

--- 10. Consultar nome do cliente, data da venda, preço unitário e forma de pagamento
USE vendas_informatica;
SELECT cliente.nome_cliente,
       venda.data_venda,
       venda.preco_unitario_venda,
       venda.forma_pagamento
FROM cliente
INNER JOIN venda 
    ON cliente.id_cliente =  venda.id_cliente;

 --- 11. Consultar nome do produto, data da venda, quantidade e status  
 USE vendas_informatica;
 SELECT produto.nome_produto,
       venda.data_venda,
       venda.quantidade,
       venda.status_venda
FROM produto
INNER JOIN venda
    ON produto.id_produto = venda.id_produto;

--- 12. Consultar nome do produto, preço e forma de pagamento, somente PIX ou Boleto
USE vendas_informatica;
SELECT produto.nome_produto,
       venda.preco_unitario_venda,
       venda.forma_pagamento
FROM venda 
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto
WHERE venda.forma_pagamento IN ("PIX", "Boleto");

--- 13.Consultar nome do cliente, nome do produto, data da venda e quantidade
USE vendas_informatica;
SELECT cliente.nome_cliente,
       produto.nome_produto,
       venda.data_venda,
       venda.quantidade
FROM venda 
INNER JOIN cliente 
    ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto;

--- 14. Consultar nome do produto, desconto e forma de pagamento, da venda mais antiga para a mais recente
USE vendas_informatica;
SELECT produto.nome_produto,
       venda.desconto_percentual,
       venda.forma_pagamento
FROM venda 
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto
ORDER BY venda.data_venda ASC;

--- 15.Consultar nome do produto, nome do cliente, desconto e forma de pagamento, em ordem alfabética por status da venda 
USE vendas_informatica;
SELECT produto.nome_produto,
       cliente.nome_cliente,
       venda.desconto_percentual,
       venda.forma_pagamento
FROM venda 
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto
INNER JOIN cliente 
    ON venda.id_cliente = cliente.id_cliente
ORDER BY venda.status_venda ASC;

--- 16. Consultar nome do cliente, e-mail, produto, marca, categoria, forma de pagamento e status, da maior venda para a menor, somente canceladas ou concluídas
 USE vendas_informatica;
SELECT cliente.nome_cliente,
       cliente.email,
       produto.nome_produto,
       produto.marca,
       produto.categoria,
       venda.forma_pagamento,
       venda.status_venda
FROM venda 
INNER JOIN cliente 
    ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto
WHERE venda.status_venda IN ("Cancelada", "Concluída")
ORDER BY (venda.quantidade * venda.preco_unitario_venda) DESC;