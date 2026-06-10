CREATE TABLE Alunos (
id_aluno INT  AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(50),
idade_aluno INT,
curso_aluno VARCHAR(50),
nota_aluno DECIMAL(4,2)
);
 -- Adicionar Lucas de 20 anos do curso de matemática com nota 8,5. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Lucas', 20, 'Matemática', 8.5);

-- Adicionar Mariana de 22  anos do curso de Hitória com nota 9. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Mariana', 22, 'História', 9.0);

-- Adicionar Pedro. --
INSERT INTO Alunos (nome_aluno) VALUES
('Pedro');

-- Adicionar Ana de 19 anos. --
INSERT INTO Alunos (nome_aluno, idade_aluno) VALUES
('Ana', 19);

-- Adicionar Carlos do curso de Física. --
INSERT INTO Alunos (nome_aluno, curso_aluno) VALUES
('Carlos', 'Física');

-- Adicionar Fernanda de 21 anos com nota 10. --
INSERT INTO Alunos (nome_aluno, idade_aluno, nota_aluno) VALUES
('Fernanda', 21, 10.0);

-- Adicionar Roberto de 18 anos do curso de Geografia. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno) VALUES
('Roberto', 18, 'Geografia');

-- Adicionar João de 25 anos. --
INSERT INTO Alunos (id_aluno, nome_aluno, idade_aluno) VALUES
(100, 'João', 25);

-- Adicionar Beatriz do curso de Química com nota 7.5. --
INSERT INTO Alunos (nome_aluno, curso_aluno, nota_aluno) VALUES
('Beatriz', 'Química', 7.5);

-- Adiconar Rafael de 30 anos do curso de Artes com noa 6. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Rafael', 30, 'Artes', 6.0);

-- Rodrigo Correa do Nascimento - 21/05/26 - Exercícios CRUD - Camargo Aranha --



-- 2) 10 READS --

-- Buscar todos os dados dos alunos da tabela. --
SELECT * FROM Alunos;

-- Buscar apenas coluna do nome de todos os alunos. --
SELECT nome_aluno FROM Alunos;

-- Buscar todos os alunos que estão no curso de Matemática. --
SELECT nome_aluno FROM Alunos
WHERE curso_aluno = 'Matemática';

-- Buscar todos os alunos com mais de 20 anos. --
SELECT nome_aluno FROM Alunos
WHERE idade_aluno > 20;

-- Buscar alunos com nota maior ou igual a 7.0. --
SELECT nome_aluno FROM Alunos
WHERE nota_aluno >= 7.0;

-- Buscar aluno onde id for igual a 5. --
SELECT nome_aluno FROM Alunos
WHERE ID_ALUNO = 5;

-- Buscar nome e nota de todos os alunos do curso de História. --
SELECT nome_aluno, nota_aluno FROM Alunos
WHERE curso_aluno = "História";

-- Buscar todos os alunos com idade igual a 18. --
SELECT nome_aluno FROM Alunos
WHERE idade_aluno = 18;

-- Buscar os alunos que tiraram nota 10. --
SELECT nome_aluno FROM Alunos
WHERE nota_aluno = 10;
 
-- Buscar todos os alunos com o nome Ana. --
SELECT nome_aluno FROM Alunos
WHERE nome_aluno ="Ana";

-- Rodrigo Correa do Nascimento - 21/05/26 - Exercícios CRUD - Camargo Aranha --



-- 3) UPDATES --

-- Atualizar nota do aluno com id igual a 1 para 9.5. --
UPDATE Alunos
SET nota_aluno = 9.5
WHERE id_aluno = 1;

-- Mudar curso da aluna Mariana para Geografia. --
UPDATE Alunos
SET curso_aluno = "Geografia"
WHERE nome_aluno = "Mariana";

-- Mudar idade do aluno com id igual a 3 para 21 anos. --
UPDATE Alunos
SET idade_aluno = 21
WHERE id_aluno = 3;

-- Mudar a nota de todos os alunos do curso de Física para 8.0. --
UPDATE Alunos
SET nota_aluno = 8.0
WHERE curso_aluno = "Física";

-- Mudar o nome do aluno com id 4 para Ana Carolina. --
UPDATE Alunos
SET nome_aluno = "Ana Carolina"
WHERE id_aluno = 4;

-- Mudar o curso de todos os alunos de Artes para Design. --
UPDATE Alunos
SET curso_aluno = "Design"
WHERE curso_aluno = "Artes";

-- Mudar a nota da aluna Beatriz para 8.5. --
UPDATE Alunos
SET nota_aluno = 8.5
WHERE nome_aluno = "Beatriz";

-- Mudar idade e nota do aluno Lucas para 21 anos e nota 9. --
UPDATE Alunos
SET idade_aluno = 21, nota_aluno = 9
WHERE nome_aluno = "Lucas";

-- Mudar nota do aluno com id 10 para 5. --
UPDATE Alunos
SET nota_aluno = 5.0
WHERE id_aluno = 10;

-- Mudar curso do aluno de id 2 para Ciências da Computação. --
UPDATE Alunos
SET curso_aluno = "Ciências da Computação"
WHERE id_aluno = 2;

-- Rodrigo Correa do Nascimento - 21/05/26 - Exercícios CRUD - Camargo Aranha --



-- 4) DELETE --

-- Delete o aluno que possui id igual a 10. --
DELETE FROM Alunos
WHERE id_aluno =  10;

-- Delete a aluna chamada Fernanda. --
DELETE FROM Alunos
WHERE nome_aluno = "Fernanda";

-- Delete todos os alunos que tem nota menor que 5.0. --
DELETE FROM Alunos
WHERE nota_aluno < 5.0;

-- Delete todos os alunos do curso de Química. --
DELETE FROM Alunos
WHERE curso_aluno = "Química";

-- Delete aluno com id igual a 7. --
DELETE FROM Alunos
WHERE id_aluno = 7;

-- Delete todos os alunos que tem menos de 18 anos. --
DELETE FROM Alunos
WHERE idade_aluno < 18;

-- Delete o aluno chamado Roberto. --
DELETE FROM Alunos
WHERE nome_aluno = "Roberto";

--Delete alunos com nota igual a 0. --
DELETE FROM Alunos
WHERE nota_aluno = 0;

-- Delete aluno com id igual a 15. --
DELETE FROM Alunos
WHERE id_aluno = 15;

-- Deletar todos os aluno do curso de História com nota menor que 6.0. --
DELETE FROM Alunos
WHERE curso_aluno = "História" AND nota_aluno < 6.0;

-- Rodrigo Correa do Nascimento - 21/05/26 - Exercícios CRUD - Camargo Aranha --

-- DESAFIOS --

-- Bônus de fim de semestre --
UPDATE Alunos
SET nota_aluno = nota_aluno + 1.5
WHERE curso_aluno = 'Física' AND nota_aluno < 7.0;

-- A faxina do Sistema --
DELETE FROM Alunos
WHERE curso_aluno = "Artes" OR nota_aluno = 0.0;

-- O pódio dos veteranos --
SELECT nome_aluno, idade_aluno FROM Alunos
ORDER BY idade_aluno DESC LIMIT 3;

-- Rodrigo Correa do Nascimento - 21/05/26 - Exercícios CRUD - Camargo Aranha --
