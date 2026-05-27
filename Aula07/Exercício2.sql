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
INSERT INTO Alunos (nome_aluno, curso_aluno, data_aluno) VALUES
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