CREATE DATABASE sistema_biblioteca;

Use sistema_biblioteca;

CREATE TABLE aluno(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL

);

CREATE TABLE livro(
    id_livro INT PRIMARY KEY AUTO_INCREMENT, 
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicado INT(4) NOT NULL

);

CREATE TABLE registro(
    id_registro INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL

);


INSERT INTO aluno(nome, email, curso)
VALUES ("Camila", "camilagarcia@gmail.com", "Administração");

INSERT INTO aluno(nome, email, curso)
VALUES ("Luis", "luisfernando@gmail.com", "Informática");

INSERT INTO aluno(nome, email, curso)
VALUES ("Jansen", "jansendasilva@gmail.com", "Mecatrônica");


SELECT * FROM aluno;


INSERT INTO livro(titulo, autor, ano_publicado)
VALUES ("Capitães da Areia", "Jorge Amado", 1937);

INSERT INTO livro(titulo, autor, ano_publicado)
VALUES ("Vidas Secas", "Graciliano Ramos", 1938);

INSERT INTO livro(titulo, autor, ano_publicado)
VALUES ("Memórias Póstumas de Brás Cubas", "Machado de Assis", 1881);


SELECT * FROM livro;


INSERT INTO registro(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES ( 1, 1, "2026-09-25", "2026-10-20");

INSERT INTO registro(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES ( 2, 2, "2026-09-26", "2026-10-21");

INSERT INTO registro(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES ( 3, 3, "2026-09-27", "2026-10-22");


SELECT * FROM registro;