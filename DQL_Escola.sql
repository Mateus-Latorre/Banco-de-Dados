USE db_escola_T;

--Listar os 3 principais alunos
SELECT TOP 3 matricula FROM tb_aluno;

--Lista todas as matriculas dos alunos em ordem crescente
SELECT matricula
FROM tb_aluno
ORDER BY nome ASC;

--Listar os id's dos 3 primeiros alunos que foram cadastros
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--Lista todos os alunos
SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'stephani';

--Lista o nome da escola Torloni
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni'

--Mostre todas as turmas que tem o nome 2DS
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = '2DS';

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY nome DESC;

--Mostre quantos alunos existe na base
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Mostre a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

SELECT TOP 1 nome, data_nasc
FROM tb_aluno
ORDER BY data_nasc;

--Exibe a media aritmetica de nota que vale nas provas
SELECT AVG(nota) FROM tb_prova;

--Exiba a soma dos id's de uma turma
SELECT SUM(id) FROM tb_turma
SELECT * FROM tb_turma

--Mostre as nomes dos alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY data_nasc;
