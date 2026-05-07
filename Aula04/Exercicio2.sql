CREATE TABLE Jogadores (
  id_jogador INT PRIMARY KEY,
  nome_usuario VARCHAR(50)
);

CREATE TABLE Jogos (
  id_jogo INT PRIMARY KEY,
  titulo VARCHAR(50),
  preco DECIMAL(10,2)  
);

CREATE TABLE Compras (
  id_compra INT PRIMARY KEY,
  id_jogador_fk INT,
  id_jogo_fk INT 
);

SELECT * FROM Jogadores;
    
INSERT INTO Jogadores VALUES 
(1, 'Otavio'),
(2, 'Natan'),
(3, 'Carol');

INSERT INTO Jogos VALUES 
(34, 'Cuphead', 37.00),
(67, 'Forza Horion 5', 250.00),
(78, 'Resident Evil 4', 170.00);

INSERT INTO Compras VALUES 
(101, 1, 34),
(102, 2, 67),
(103, 3, 78);

--Rodrigo Correa do Nascimento