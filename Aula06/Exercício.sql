CREATE TABLE Alunos (
id_aluno INT  AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(50),
idade_aluno INT,
curso_aluno VARCHAR(50),
nota_aluno DECIMAL
);
 -- Adicionar Lucas de 20 anos do curso de matemática com nota 8,5. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Lucas', 20, 'Matemática', 8.5);

-- Adicionar Mariana de 22  anos do curso de Hitória com nota 9. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Mariana', 22, 'História', 9.0);

-- Adicionar Pedro. --
INSERT INTO Alunos (nome_aluno, idade_aluno) VALUES
('Pedro');

-- Adicionar Ana de 19 anos. --
INSERT INTO Alunos (nome_aluno, idade_aluno) VALUES
('Ana', 19);

-- Adicionar Carlos do curso de Física. --
INSERT INTO Alunos (nome_aluno, curso_aluno) VALUES
('Carlos', 'Física');

-- Adicionar Fernanda de 21 anos com nota 10. --
INSERT INTO Alunos (nome_aluno, idade_aluno, nota_aluno) 	VALUES
('Fernanda', 21, 10.0);

-- Adicionar Roberto de 18 anos do curso de Geografia. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno) VALUES
('Roberto', 18, 'Geografica');

-- Adicionar Beatriz do curso de Química com nota 7.5. --
INSERT INTO Alunos (nome_aluno, curso_aluno, nota_aluno) VALUES
('Beatriz', 'Química', 7.5);

-- Adicionar Rafael de 30 anos do curso de Artes com nota 6. --
INSERT INTO Alunos (nome_aluno, idade_aluno, curso_aluno, nota_aluno) VALUES
('Rafael', 30, 'Artes', 6.0);

-- Adicionar João de 25 anos. --
INSERT INTO Alunos (id_aluno, nome_aluno, idade_aluno) VALUES
(100, 'João', 25.0);

-- Adicionar Beatriz do curso de Química com nota 7.5. --
INSERT INTO Alunos (nome_aluno, curso_aluno, nota_aluno) VALUES
('Beatriz', 'Química', 7.5);

-- Adiconar Rafael de 30 anos do curso de Artes com noa 6. --
INSERT INTO Alunos (nome_aluno, curso_aluno, nota_aluno) VALUES
('Rafael', 30, 'Artes', 6.0);

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
WHERE idade_aluno >=20;

-- Buscar alunos com nota maior ou igual a 7.0. --
SELECT nome_aluno FROM Alunos
WHERE nota_aluno >=7.0;

-- Buscar aluno onde id for igual a 5. --
SELECT nome_aluno FROM Alunos
WHERE ID_ALUNO =5;

-- Buscar nome e nota de todos os alunos do curso de História. --
SELECT nome_aluno, nota_aluno FROM Alunos
WHERE curso_aluno = "História";

-- Buscar todos os alunos com idade igual a 18. --
SELECT nome_aluno FROM Alunos
WHERE idade_aluno =18;

-- Buscar os alunos que tiraram nota 10. --
SELECT nome_aluno FROM Alunos
WHERE nota_aluno =10;
 
-- Buscar todos os alunos com o nome Ana. --
SELECT nome_aluno FROM Alunos
WHERE nome_aluno ="Ana";

-- 3) UPDATES --

-- Atualizar nota do aluno com id igual a 1 para 9.5. --
UPDATE Alunos
SET nota_aluno = 9.5
WHERE id_aluno = 1;

-- Mudar curso da aluna Mariana para Geografia. --
UPDATE Alunos
SET curso_aluno = "Geografia"
WHERE nome_aluno = "Mariana";