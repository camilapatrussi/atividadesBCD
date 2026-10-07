CREATE DATABASE compras_produtos;

Use compras_produtos;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, 
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone DATE NOT NULL,
    data_entrada DATE NOT NULL

);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT, 
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(20, 2) NOT NULL,
    qtd INT NOT NULL,
    data_entrada DATE NOT NULL
);

CREATE TABLE venda(
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    data_entrada DATE NOT NULL,
    qtd_venda INT NOT NULL 

);


INSERT INTO cliente(nome_cliente, email, telefone, data_entrada)
VALUES ("Camila", "camilagarcia@gmail.com", 5555-8888, "2026-09-01");

INSERT INTO cliente(nome_cliente, email, telefone, data_entrada)
VALUES ("Luis", "luisfernando@gmail.com", 6666-7777, "2026-09-02");

INSERT INTO cliente(nome_cliente, email, telefone, data_entrada)
VALUES ("Jansen", "jansendasilva@gmail.com", 2222-3333,  "2026-09-03");


SELECT * FROM cliente


INSERT INTO produto(nome_produto, preco, qtd, data_entrada)
VALUES ("Chocolate", 6.99, 13, "2026-09-26");

INSERT INTO produto(nome_produto, preco, qtd, data_entrada)
VALUES ("Fini", 4.99, 13, "2026-09-27");

INSERT INTO produto(nome_produto, preco, qtd, data_entrada)
VALUES ("Salgadinho", 8.99, 13, "2026-09-28");


SELECT * FROM produto


INSERT INTO venda(id_cliente, id_produto, data_entrada, qtd_venda)
VALUES ( 1, 1, "2026-09-30", 5);

INSERT INTO venda(id_cliente, id_produto, data_entrada, qtd_venda)
VALUES ( 2, 2, "2026-09-27", 4);

INSERT INTO venda(id_cliente, id_produto, data_entrada, qtd_venda)
VALUES ( 3, 3, "2026-09-25", 6);


SELECT * FROM venda
