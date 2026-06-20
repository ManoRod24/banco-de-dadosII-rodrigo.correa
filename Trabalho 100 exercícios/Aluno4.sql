-- Exercícios de SQL --

-- Nível iniciante --

-- 1 --
INSERT INTO Clientes (nome, email, telefone,, cidade, estado) VALUES
('Fernanda' 'fernanda.lima@email.com', 11985642392, 'Fortaleza', 'RS');

-- 2 --
INSERT INTO Produtos (nome, preço, estoque, categoria) VALUES
('Monitor', 2161.82, 48, 'Eletrônicos');

-- 3 --
INSERT INTO Funcionários (nome, cargo, salario, departamento) VALUES
('Juliana Costa', 'Analista', 5522.02, 'TI');

-- 4 --
INSERT INTO Pedidos (id, preco_total, forma_pagamento, _status) VALUES
(50, 1535.73, 'Transferência', 'Pendente');

-- 5 --
INSERT INTO Alunos (nome, curso, turno, matricula) VALUES
('Camila Rocha', 'Engenharia', 'Manhã', 'MAT40127');

-- 6 --
INSERT INTO Professores (nome, materia, titulacao, salario) VALUES
('Carlos Souza', 'Física', 'Mestre', 10868.23);

-- 7 --
INSERT INTO Livros (nome, autor, data_publicacao, editora, preco) VALUES
('Cem Anos de Solidão', 'Tolkien', 2018, 'Editora ABC', 66.50);

-- 8 --
INSERT INTO Usuários (nyckname, perfil, _status) VALUES
('joao123', 'editor', 'ativo');

-- 9 --
INSERT INTO Fornecedores (nome, CNPJ, localizacao) VALUES
('Tech Supply', 20408594000171, 'Belo Horizonte-PE');

-- 10 --
INSERT INTO Categorias (nome, descricao) VALUES
('Esportes', 'Produtos da categoria Esportes em geral');

-- 11 --
INSERT INTO Clientes (nome, email, telefone, cidade, estado) VALUES
('Lucas Martins', 'lucas.martins@email.com', 11947446577, 'Porto Alegre', 'RS');

-- 12 --
INSERT INTO Produtos (nome, preco estoque, categoria) VALUES
('Tablet', 346.61, 138, 'Eletrônicos');

-- 13 --
INSERT INTO Funcionários (nome, cargo, salario, departamento) VALUES
('Fernanda Lima', 'Designer', 2125.02, 'TI');

-- 14 --
INSERT INTO Clientes (id, valor_total, forma_pagamento, _status) VALUES
(88, 2750.51, 'transferência', 'pendente');

-- 15 --
INSERT INTO Alunos (nome, curso, turno, matricula) VALUES
('Ricardo Pereira', 'Ciências da Computação', 'Tarde', 'MAT42732');

-- 16 --
INSERT INTO Professores (nome, materia, titulacao, salario) VALUES
('Camila Rocha' 'Inglês', 'Pós-Doutor', 11016.62);

-- 17 --
INSERT INTO Livros (nome, autor, data_publicacao, editora, preco) VALUES
('Cem Anos de Solidão', 'Rowling', 2018, 'Editora ABC', 87.14);

-- 18 --
INSERT INTO Usuários (nyckname, perfil, _status) VALUES
('joao123', 'moderador', 'ativo');

-- 19 --
INSERT INTO Fornecedores (nome, CNPJ, localizacao) VALUES
('Tech Supply', 78107281000127, 'Rio de Janeiro-BA');

-- 20 --
INSERT INTO Categorias (nome, descricao) VALUES
('Ferramentas', 'Produtos da categoria Ferramentas em geral');

-- 21 --
INSERT INTO Clientes (nome, email, telefone, cidade, estado) VALUES
('Camila Rocha', 'camila.rocha@email.com', 11988483893, 'Porto Alegre', 'CE');

-- 22 --
INSERT INTO Produtos (nome, preco estoque, categoria) VALUES
('Tablet', 1226.42, 111, 'Eletrônicos');

-- 23 --
INSERT INTO Funcionários (nome, cargo, salario, departamento) VALUES
('Carlos Souza', 'Gerente', 13305.88, 'TI');

-- 24 --
INSERT INTO Clientes (id, valor_total, forma_pagamento, _status) VALUES
(45, 6344.39, 'dinheiro', 'pendente');

-- 25 --
INSERT INTO Alunos (nome, curso, turno, matricula) VALUES
('Maria Oliveira', 'Pedagogia', 'Manhã', 'MAT58225');

-- 26 --
INSERT INTO Professores (nome, materia, titulacao, salario) VALUES
('Carlos Souza', 'Física', 'Doutor', 9664.10);

-- 27 --
INSERT INTO Livros (nome, autor, data_publicacao, editora, preco) VALUES
('Dom Quixote', 'Garcia Márquez', 1904, 'Editora ABC', 100.86);

-- 28 --
INSERT INTO Usuários (nyckname, perfil, _status) VALUES
('maria_s', 'editor', 'ativo');

-- 29 --
INSERT INTO Fornecedores (nome, CNPJ, localizacao) VALUES
('Tech Supply', 60521841000124, 'São Paulo-SP');

-- 30 --
INSERT INTO Categorias (nome, descricao) VALUES
('Eletrônicos', 'Produtos da categoria Eletrônicos em geral');

-- 31 --
INSERT INTO Clientes (nome, email, telefone, cidade, estado);
('Maria Oliveira', 'maria.oliveira@email.com', 11927987271, 'Recife', 'BA');

-- 32 --
INSERT INTO Produtos (nome, preco, estoque, categoria) VALUES
('Teclado', 171.92, 83, 'Eletrônicos');

-- 33 --
INSERT INTO Funcionários (nome, cargo, salario, departamento) VALUES
('Ana Silva', 'Desenvolvedor', 10265.01, 'TI');

-- 34 --
INSERT INTO Clientes (id, valor_total, forma_pagamento, _status) VALUES
(22, 5070.77, 'dinheiro', 'pendente');

-- 35 --
INSERT INTO Alunos (nome, curso, turno, matricula) VALUES
('Ana Silva', 'Admministração', 'Manhã', 'MAT36732');

-- 36 --
INSERT INTO Professores (nome, materia, titulacao, salario) VALUES
('João Santos', 'História', 'Doutor', 7299.50);

-- 37 --
INSERT INTO Livros (nome, autor, data_publicacao, editora, preco) VALUES
('Cem Anos de Solidão', 'Kafka', 1904, 'Editora ABC', 80.34);

-- 38 --
INSERT into Usuários (nyckname, perfil, _status) VALUES
('carlos_dev', 'moderador', 'ativo');

-- 39 --
INSERT INTO Fornecedores (nome, CNPJ, localizacao) VALUES
('Gama Ltda', .146.972/0001-37, 'Rio de Janeiro-RJ');

-- 40 --
INSERT INTO Categorias (nome, descricao) VALUES
('Eletrônicos', 'Produtos da categoria Eletrônicos em geral');

-- 41 --
INSERT INTO Clientes (nome, email, telefone, cidade, estado) VALUES
('Lucas Martins', 'lucas.martins@email.com', '11970981775', 'Rio de Janeiro', 'RJ');

-- 42 --
INSERT INTO Produtos (nome, preco, estoque, categoria) VALUES
('Monitor', 2388.63, 124, 'Eletrônicos');

-- 43 --
INSERT INTO Funcionários (nome, cargo, salario, departamento) VALUES
('Lucas Martins', 'Desenvolvedor', 1724.60, 'TI');

-- 44 --
INSERT INTO Clientes (id, valor_total, forma_pagamento, _status) VALUES
(56, 2323.72, 'cartão de crédito', 'pendente');

-- 45 --
INSERT INTO Alunos (nome, curso, turno, matricula) VALUES
('Maria Oliveira', 'Pedagogia', 'Noite', 'MAT28943');

-- 46 --
INSERT INTO Professores (nome, materia, titulacao, salario) VALUES
('Pedro Alves', 'História', 'Mestre', 9007.86);

-- 47 --
INSERT INTO Livros (nome, autor, data_publicacao, editora, preco) VALUES
('A Metamorfose', 'Tolkien', 1990, 'Editora ABC', 54.59);

-- 48 --
INSERT INTO Usuários (nyckname, perfil, _status) VALUES
('ana.lima', 'usuario', 'ativo');

-- 49 --
INSERT INTO Fornecedores (nome, CNPJ, localizacao) VALUES
('Tech Supply', 14854368000180, 'Belo Horizonte-MG');

-- 50 --
INSERT INTO Categorias (nome, descricao) VALUES
('Alimentos', 'Produtos da categoria Alimentos em geral');

-- Nivel Intermediário --

