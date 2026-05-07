--Desafio INNER JOIN - LEFT JOIN

CREATE TABLE jogadores (
    id_jogador INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

SELECT * FROM jogadores;
INSERT INTO jogadores (id_jogador, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Carlos');


CREATE TABLE jogos (
    id_jogo INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL
);

SELECT * FROM jogos;
INSERT INTO jogos (id_jogo, titulo) VALUES
(4,'FIFA 21'),
(5, 'GTA V'),
(6, 'Minecraft');

CREATE TABLE compras (
    id_compra INT PRIMARY KEY,
    id_jogador INT,
    id_jogo INT
);

SELECT * FROM compras;
INSERT INTO compras (id_compra, id_jogador, id_jogo) VALUES 
(7, 1, 4),
(8, 1, 5),
(9, 2, 6);

-- Liste o nome do jogador e o título do jogo para todas as compras realizadas (apenas quem comprou algo).
SELECT j.nome AS jogador, g.titulo AS jogo
FROM compras c
INNER JOIN jogadores j ON c.id_jogador = j.id_jogador
INNER JOIN jogos g ON c.id_jogo = g.id_jogo;


-- Liste todos os jogadores cadastrados e os títulos dos jogos que eles compraram. Se o jogador não comprou nada, o nome do jogo deve aparecer como NULL.
SELECT j.nome AS jogador, g.titulo AS jogo
FROM jogadores j
LEFT JOIN compras c ON j.id_jogador = c.id_jogador
LEFT JOIN jogos g ON c.id_jogo = g.id_jogo;


-- Liste todos os jogos da loja e o nome de quem os comprou. Se um jogo nunca foi vendido, o nome do comprador deve aparecer como NULL.
SELECT g.titulo AS jogo, j.nome AS comprador
FROM jogos g
LEFT JOIN compras c ON g.id_jogo = c.id_jogo
LEFT JOIN jogadores j ON c.id_jogador = j.id_jogador;

--Rodrigo Correa do Nascimento