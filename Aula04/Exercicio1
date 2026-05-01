CREATE TABLE Jogadores (
id_aluno INT PRIMARY KEY, 
nick_name VARCHAR(50)
);

CREATE TABLE Skins (
id_skin INT PRIMARY KEY,
nome skin VARCHAR(50), 
id_dono INT
);

select * from Jogadores;

INSERT INTO Jogadores VALUES --Inserindo os jogdores.
(1, 'NinjaPro'), 
(2, 'CatPlayer'), 
(3, 'Ghost'); 

INSERT INTO Skins VALUES --Inserindo as Skins.
(10, 'Capa de Fogo', 1), 
(11, 'Espada Laser', 2);

-- ? Selecione o nick.name da tabela Jogadores || skin.name da tabela Skins, cruze e mostre somente jogadores que possuem skin.
SELECT Jogadores.nick_name, Skins.nome_skin FROM Jogadores 
INNER JOIN Skins ON Jogadores.id_aluno Skins.id_dono;

-- ? Selecione nik.name da tabela Jogadores || skin.name da tabela Skins, cruze e mostre TODOS os jogadores. Se jogador não tem skin, aparece NULL.
SELECT Jogadores.nick_name, Skins.nome_skin FROM Jogadores
LEFT JOIN Skins ON Jogadores.id_aluno - Skins.id_dono;

--Rodrigo Correa do Nascimento