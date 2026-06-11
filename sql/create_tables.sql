CREATE DATABASE agencia_viagens;
USE agencia_viagens;

CREATE TABLE fornecedor (
    cnpj VARCHAR(18) PRIMARY KEY,
    nome_empresa VARCHAR(150) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    cnpj_fornecedor VARCHAR(18) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(80),

    CONSTRAINT fk_servico_fornecedor
    FOREIGN KEY (cnpj_fornecedor)
    REFERENCES fornecedor(cnpj)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE pacote (
    id_pacote INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT
);

CREATE TABLE pacote_servico (
    id_pacote INT NOT NULL,
    id_servico INT NOT NULL,

    PRIMARY KEY(id_pacote,id_servico),

    FOREIGN KEY (id_pacote)
    REFERENCES pacote(id_pacote)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    FOREIGN KEY (id_servico)
    REFERENCES servico(id_servico)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL
);

CREATE TABLE vendedor (
    matricula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL
);

CREATE TABLE venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    matricula_vendedor INT NOT NULL,
    data_venda DATE NOT NULL,

    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    FOREIGN KEY (matricula_vendedor)
    REFERENCES vendedor(matricula)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE venda_servico (
    id_venda INT NOT NULL,
    id_servico INT NOT NULL,

    PRIMARY KEY(id_venda,id_servico),

    FOREIGN KEY (id_venda)
    REFERENCES venda(id_venda)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    FOREIGN KEY (id_servico)
    REFERENCES servico(id_servico)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE venda_pacote (
    id_venda INT NOT NULL,
    id_pacote INT NOT NULL,
    valor_total DECIMAL(10,2),

    PRIMARY KEY(id_venda,id_pacote),

    FOREIGN KEY (id_venda)
    REFERENCES venda(id_venda)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,

    FOREIGN KEY (id_pacote)
    REFERENCES pacote(id_pacote)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE recebimento_cliente (
    id_recebimento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL,

    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE pagamento_fornecedor (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT NOT NULL,
    valor_custo DECIMAL(10,2) NOT NULL,
    data_limite DATE NOT NULL,

    FOREIGN KEY (id_venda)
    REFERENCES venda(id_venda)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE comissao (
    id_comissao INT AUTO_INCREMENT PRIMARY KEY,
    matricula_vendedor INT NOT NULL,
    valor_liquido DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (matricula_vendedor)
    REFERENCES vendedor(matricula)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
