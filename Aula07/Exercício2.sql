CREATE TABLE Alunos (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(50),
idade_aluno INT,
curso_aluno VARCHAR(50),
nota_aluno DECIMAL(4,2),
data_matricula DATE,
status_matricula TEXT
);

-- 1) CREATE --

-- Inserir 3 alunos com apenas um comando INSERT. --
INSERT INTO Alunos (nome_aluno) VALUES
('Eduardo'),
('Maria'),
('José');

-- Inserir aluno no curso de Desenvolvimento de Sistemas utilizando a função --
--nativa do banco (como CURRENT_DATE ou NOW()) para preencher a data_matricula. --
INSERT INTO Alunos (nome_aluno, curso_aluno, data_matricula) VALUES
('Danilo', 'Desenvolvimento de Sistemas', CURRENT_DATE);

-- Inserir aluna Camila informando apenas o nome do curso. Colunas idade, 
--nota e status devem receber valor nulo.
INSERT INTO Alunos (nome_aluno, curso_aluno) VALUES
('Camila', 'Nutrição');

-- Inserir D'Angelo com nota 8.5. --
INSERT INTO Alunos (nome_aluno, nota_aluno) VALUES
('D''Angelo', 8.5);

-- Inserir aluna de Lógica de Programação onde a idade não é informada diretamente, 
-- mas sim calculada via SQL (ex: 2026 - 2008. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno) VALUES
('Gisele', 2026 - 2008, 'Lógica de Programação');

--Inserir  aluno Marcos com nota 5.0, e defina imediatamente o status da 
--matricula como Trancado. --
INSERT INTO Alunos (nome_aluno, nota_aluno, status_matricula) VALUES
('Marcos', 5.0, 'Trancado');

-- Utilizar comanddo INSERT IGNORE para tentar inserir aluno com id igual a 1 forçado. --
INSERT IGNORE INTO Alunos (id_aluno, nome_aluno) VALUES
(1, 'Daniel');

-- Inserir aluna Sônia com data de matricula para o dia 2024-02-15. --
INSERT INTO Alunos (nome_aluno, data_matricula) VALUES
('Sônia', '2024-02-15');

-- Inserir Beto com nota resulatante de: (7.5 + 8.0) / 2. --
INSERT INTO Alunos (nome_aluno, nota_aluno) VALUES
('Beto', 7.75);

-- Inserir aluna Letícia com letras maiúsculas utilizando a função UPPER. --
INSERT INTO Alunos (nome_aluno) VALUES
(UPPER('Letícia'));

-- Rodrigo Correa do Nascimento - 26/05/26 - Exercícios CRUD - Camargo Aranha --



-- 2) READ --

-- Busque todos os alunos que possuem nota entre 6.0 e 8.5. --
SELECT nome_aluno FROM Alunos 
WHERE nota_aluno BETWEEN 6.0 AND 8.5;

-- Busque alunos que estão no curso de Matemática, Física ou Química. --
SELECT nome_aluno FROM Alunos
WHERE curso_aluno IN ('Matemática', 'Física', 'Química');

-- Busque todos os alunos com nome que comecem com C --
SELECT nome_aluno FROM Alunos
WHERE nome_aluno LIKE 'C%';

-- Busque todos os alunos com Silva em qualquer parte do nome. --
SELECT nome_aluno FROM Alunos
WHERE nome_aluno LIKE '%Silva%';

-- Busque todos os alunos com notas com status NULL. --
SELECT nome_aluno, idade_aluno, curso_aluno FROM Alunos
WHERE nota_aluno IS NULL;

-- Usar o comando COUNT() para ver total de alunos com status ativo. --
SELECT COUNT(*) AS status_matricula
FROM Alunos
WHERE status_matricula = 'Ativo';

-- Busque alunos ordenando curso em ordem alfabética e nota decrescente. --
SELECT * FROM Alunos
ORDER BY curso_aluno ASC, nota_aluno DESC;

-- Busque todos os aluno que não estão no curso de Artes. --
SELECT nome_aluno , curso_aluno FROM Alunos
WHERE NOT curso_aluno = 'Artes';

-- Usar comando AVG() para calcular média das notas de todos os alunos. --
SELECT AVG(nota_aluno) FROM Alunos;

-- Busque todos os cursos da tabela sem repetir. Use DISTINCT. --
SELECT DISTINCT curso_aluno FROM Alunos;

-- Rodrigo Correa do Nascimento - 26/05/26 - Exercícios CRUD - Camargo Aranha --



-- 3) UPDATE --

-- Aumente em 10% a notade todos os alunos do curso de Banco de Dados. --
UPDATE Alunos
SET nota_aluno = nota_aluno * 1.1
WHERE curso_aluno = 'Banco de Dados';

-- mude para Trancado, todos os alunos com nota menor que 4.0 e com mais de 18 anos. --
UPDATE Alunos
SET status_matricula = 'Trancado'
WHERE nota_aluno < 4 AND idade_aluno > 18;

-- Mude curso para Desenvolvimento de Sistemas e nota 9.0, o aluno com id igual a 12. --
UPDATE Alunos
SET curso_aluno = 'Desenvolvimento de Sistemas', nota_aluno = 9.0
WHERE id_aluno = 12;

-- Mude idade de todos os alunos para 20 anos, que possuem id igual a 2, 5, 7 ou 10. --
UPDATE Alunos
SET idade_aluno = 20
WHERE id_aluno IN (2, 5, 7, 10);

-- Mudar para NULL todos os aluno que estão com status trancado. --
UPDATE Alunos
SET nota_aluno = NULL
WHERE status_matricula = 'Trancado';

-- Mudar o nome de todos os alunos do curso de História, deixando em minúsculo. --
UPDATE Alunos
SET nome_aluno = LOWER(nome_aluno)
WHERE curso_aluno = 'História';

-- Subtraia 5.0 da nota de quem está no curso de Física ou Química. --
UPDATE Alunos
SET nota_aluno = nota_aluno - 5.0
WHERE curso_aluno IN ('Física', 'Química');

-- Mudar status para Concluído todos os aluno com data de matrícula anterior a 2025-01-01. --
UPDATE Alunos
SET status_matricula = 'Concluído'
WHERE data_matricula < '2025-01-01';

-- Mudar nome do aluno com id igual a 3 adicionando Representante no final do nome. --
UPDATE Alunos
SET nome_aluno = CONCAT(nome_aluno, ' Representante')
WHERE id_aluno = 3;

-- Mudar nota para 10.0 a nota de todos os alunos com nota maior que 10.0 --
UPDATE Alunos
SET nota_aluno = 10.0
WHERE nota_aluno > 10.0;

-- Rodrigo Correa do Nascimento - 26/05/26 - Exercícios CRUD - Camargo Aranha --



-- 4) DELETE --

-- Delete todos os aluno com nomes que terminam com a palavra Junior. --
DELETE FROM Alunos
WHERE nome_aluno LIKE '%Junior';

-- Delete os alunos com id igual a 4, 8, e 15. --
DELETE FROM Alunos
WHERE id_aluno IN (4, 8, 15);

-- Delete todos os alunos que possuem curso NULL. --
DELETE FROM Alunos
WHERE curso_aluno IS NULL;

-- Delete todos os alunos com idade entre 30 e 40 anos. --
DELETE FROM Alunos
WHERE idade_aluno  BETWEEN 30 AND 40;

-- Delete todos os alunos do curso de Geografia com status Trancado. --
DELETE FROM Alunos
WHERE curso_aluno = 'Geografia' AND status_matricula = 'Trancado';

-- Delete os alunos com as 3 menores notas. --
DELETE FROM Alunos
ORDER BY  nota_aluno ASC LIMIT 3;

-- Delete alunos com nota menor que 5, exceto se o curso do aluno for Desenvolvimento de Sistemas. --
DELETE FROM Alunos
WHERE nota_aluno < 5 AND curso_aluno <> 'Desenvolvimento de Sistemas';

-- Delete todos os alunos com a palavra Teste no nome. --
DELETE FROM Alunos
WHERE nome_aluno LIKE '%Teste';

-- Delete todos os alunos com idade menor que 16 e data de matrícula do ano vigente.  --
DELETE FROM Alunos
WHERE idade_aluno < 16 AND YEAR(data_matricula) = YEAR(CURDATE());

-- Delete todos os alunos com nota 0.0 ou status da matrícula NULL. --
DELETE FROM Alunos 
WHERE nota_aluno = 0.0 OR status_matricula IS NULL;

-- Rodrigo Correa do Nascimento - 26/05/26 - Exercícios CRUD - Camargo Aranha --

-- Desafios --

-- O raio-x do conselho de classe --
SELECT curso_aluno, AVG(nota_aluno) FROM Alunos
GROUP BY curso_aluno HAVING AVG(nota_aluno) < 7.0;

-- A migração de sistema --
 CREATE TABLE Alunos_aprovados
 AS SELECT * FROM Alunos
 WHERE nota_aluno >= 6;

 -- A regra de negócio automatizada --
 UPDATE Alunos
 SET status_matricula = CASE
 WHEN nota_aluno >= 6.0 THEN 'Concluido'
 ELSE 'Retido'
 END;

 -- A limpeza de inconsistências --
 DELETE FROM Alunos
 WHERE nota_aluno IS NULL 
 AND curso_aluno IN ( 
    SELECT curso_aluno FROM Alunos WHERE nome_aluno = 'João'
    );

-- Rodrigo Correa do Nascimento - 26/05/26 - Exercícios CRUD - Camargo Aranha. --
