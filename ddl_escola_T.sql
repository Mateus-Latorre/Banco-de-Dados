--Este comando cria um novo banco de dados
CREATE DATABASE db_escola_T;

--Esse comando usa o BD
USE db_escola_T
--Este comando cria uma nova tabela
CREATE TABLE tb_escola(
	id       INT IDENTITY(1, 1) PRIMARY KEY,
	nome     NVARCHAR (255)     NOT NULL,
	endereco NVARCHAR(255)      NOT NULL,
);
--DQL realiza consulta nas tabelas de um respectivo banco
SELECT * FROM tb_escola;
SELECT * FROM tb_turma_prova;
SELECT * FROM tb_turma;
SELECT * FROM tb_aluno;
--TABELA TURMA
CREATE TABLE tb_turma(
	id          INT            IDENTITY(1,1) PRIMARY KEY,
	serie       INT            NOT NULL,
	periodo     NCHAR(5)       NOT NULL,
	numero_sala TINYINT        NOT NULL,
	nome_turma  NVARCHAR(100)  NOT NULL,
);

--TABELA PROVA
CREATE TABLE tb_prova(
	id               INT               IDENTITY(1,1)PRIMARY KEY,
	nome_professor   NVARCHAR(255)     NOT NULL,
	materia          NVARCHAR(255)     NOT NULL,
	duracao          TIME              NOT NULL,
	nota             DECIMAL(100,1)    NOT NULL,
	data_prova       DATE              NOT NULL,
)



--TABELA ALUNO
CREATE TABLE tb_aluno(
	id        INT               IDENTITY(1,1)    PRIMARY KEY,
	nome      NVARCHAR(255)                      NOT NULL,
	cpf       NCHAR(11)         UNIQUE           NOT NULL,
	matricula NVARCHAR(10)      UNIQUE           NOT NULL,
	data_nasc DATE                               NOT NULL,
	id_escola INT FOREIGN KEY REFERENCES tb_escola(id),
);


--TABELA INTERMEDIARIA TURMAPROVA
CREATE TABLE tb_turma_prova(
	id_turma INT NOT NULL,
	id_prova INT NOT NULL,
	PRIMARY KEY(id_turma, id_prova),
);
