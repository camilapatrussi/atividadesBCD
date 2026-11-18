-- 2_2_10_Atividades_DML_INSERT --

-- 1. Cadastre um cliente com o nome Rubervaldo Sesiano, email: ruber.sesi@gmail.com, da cidade de Jaguaríuna, Estado de São Paulo com a data de cadastro vigente. --
USE vendas_informatica;
INSERT INTO Cliente (
    nome_cliente,
    email,
    cidade,
    estado,
    data_cadastro
)
VALUES (
    'Rubervaldo Sesiano',
    'ruber.sesi@gmail.com',
    'Jaguariúna',
    'SP',
    CURDATE()
);

-- 2. Cadastre o produto MousePad 5POL na categoria Acessórios da marca Lumix no preço de 59.98 com um estoque de 35 peças para o status Ativo com a data de cadastro vigente. --
USE vendas_informatica;
INSERT INTO Produto (
    nome_produto,
    categoria,
    marca,
    preco_unitario,
    estoque,
    ativo,
    data_cadastro
)
VALUES (
    'MousePad 5POL',
    'Acessórios',
    'Lumix',
    59.98,
    35,
    1,
    CURDATE()
);

-- 3. Cadastre a Venda para o Rubervaldo que comprou o produto MousePad 5POL na data de 21/10/2026 onde o mesmo comprou 10 unidades com desconto de 1.33 via PIX com status de venda Concluída.--
USE vendas_informatica;
INSERT INTO Venda (
    id_produto,
    id_cliente,
    data_venda,
    quantidade,
    preco_unitario_venda,
    desconto_percentual,
    forma_pagamento,
    status_venda
)
VALUES (
    (SELECT id_produto
     FROM Produto
     WHERE nome_produto = 'MousePad 5POL'),

    (SELECT id_cliente
     FROM Cliente
     WHERE email = 'ruber.sesi@gmail.com'),

    '2026-10-21',
    10,
    59.98,
    1.33,
    'PIX',
    'Concluída'
);