--USAR UM BANCO JÁ CRIADO
USE db_escola_T;

--INSERIR UM REGISTROS NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José')
SELECT * FROM tb_escola;

----INSERIR UM REGISTROS NA TABELA ESCOLA
INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES(2, 'Tarde', 30, '2DS'),
(2, 'Manhã', 30, '2DS'),
(2, 'Noite', 30, '2DS');
SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova (nota, data_prova, nome_professor, materia, duracao)
VALUES(10, '2025-09-30', 'Rogeria', 'matematica', '4:30:00'),
(7, '2025-10-30', 'Maria Celia', 'portugues', '6:09:11'),
(10, '2025-11-10', 'Elvis', 'quimica', '15:37:57');
SELECT * FROM tb_prova;

--INSERIR UM REHISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES('mateus','64064064064', 'mateus2009', '2009-05-30', 1);
INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES('carlos','34563456345', 'carlos0000', '2009-04-30', 1),
('stephani','45645645645', 'steph02345', '2007-11-24', 1),
('marcos','89789789789', 'marcos9990', '2008-11-11', 1),
('bruno','38938938989', 'bruno43568', '2009-09-09', 1),
('felipe','57857857878', 'felipe2903', '2007-02-27', 1);
SELECT * FROM tb_aluno;
DELETE FROM tb_turma
WHERE id = '3'

