-- Criação das tabelas
CREATE TABLE cardapio (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    preco_unitario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE comanda (
    codigo SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    numero_mesa INT NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE item_comanda (
    id SERIAL PRIMARY KEY,
    codigo_comanda INT NOT NULL,
    codigo_cardapio INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (codigo_comanda) REFERENCES comanda(codigo),
    FOREIGN KEY (codigo_cardapio) REFERENCES cardapio(codigo),
    UNIQUE (codigo_comanda, codigo_cardapio)
);