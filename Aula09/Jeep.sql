CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(100) NOT NULL,
    ano_fabricacao YEAR NOT NULL,
    chassi VARCHAR(17) UNIQUE NOT NULL,
    carroceria VARCHAR(20) NOT NULL, -- (Ex: SUV, Sedan, Hatch)
    potencia_cavalos INT NOT NULL
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    telefone_contato VARCHAR(20) NOT NULL,
    data_compra DATE NOT NULL,
    cidade_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionario (
    id_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(100) NOT NULL,
    cargo_func VARCHAR(100) NOT NULL,
    salario_func DECIMAL(10,2) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    qtd_vendas INT NOT NULL
);

CREATE TABLE Venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    id_func INT NOT NULL,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    numero_parcelas INT NOT NULL,
    garantia_anos INT NOT NULL,

    FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY(id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY(id_func) REFERENCES Funcionario(id_func)
);

-- Adicionando dados nas tabelas
INSERT INTO Veiculo (modelo, ano_fabricacao, chassi, carroceria, potencia_cavalos) VALUES
('Jeep Renegade', 2016, '1gg384hf9484h927', 'SUV', 176);

INSERT INTO Cliente (nome_completo, cpf, telefone_contato, data_compra, cidade_cliente) VALUES
('Yuta Okkotsu', '83748291837', '+55 11 40028922', '2018-05-10', 'São Paulo');

INSERT INTO Funcionario (nome_func, cargo_func, salario_func, turno, quantidade_vendas) VALUES
('Lamar', 'Vendedor', 4500.00, 'Manhã', 32);

INSERT INTO Venda (id_cliente, id_veiculo, id_func, data_venda, valor_total, numero_parcelas, garantia_anos) VALUES
(1, 1, 1, '2021-04-22', 130000.00, 50, 5);

-- Rodrigo Correa do Nascimento - Banco de Dados II - Etec Professor Camargo Aranha