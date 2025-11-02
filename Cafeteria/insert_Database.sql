-- Script para popular o banco de dados da Cafeteria BomGosto (versão atualizada)

-- Inserir dados no cardápio
INSERT INTO cardapio (nome, descricao, preco_unitario) VALUES
('Café Expresso', 'Café expresso tradicional 50ml', 5.00),
('Café Americano', 'Café expresso diluído em água quente', 6.50),
('Cappuccino', 'Café expresso com leite vaporizado e espuma', 8.00),
('Café Latte', 'Café expresso com leite vaporizado', 7.50),
('Mocha', 'Café expresso com chocolate e leite vaporizado', 9.00),
('Café com Leite', 'Café coado com leite quente', 6.00),
('Macchiato', 'Café expresso com uma colher de espuma de leite', 6.50),
('Café Gelado', 'Café expresso gelado com gelo', 7.00);

-- Inserir comandas
INSERT INTO comanda (data, numero_mesa, nome_cliente) VALUES
('2025-11-01', 2, 'Lucas Andrade'),
('2025-11-01', 5, 'Beatriz Nogueira'),
('2025-11-02', 3, 'Felipe Martins'),
('2025-11-02', 1, 'Camila Ferreira'),
('2025-11-03', 4, 'Ricardo Lima'),
('2025-11-03', 6, 'Patrícia Mendes'),
('2025-11-04', 2, 'Eduardo Silva'),
('2025-11-04', 5, 'Larissa Oliveira');

-- Inserir itens da comanda

-- Comanda 1 (Lucas Andrade) - 2 tipos de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 1, 1),  -- 1 Expresso
(1, 3, 2);  -- 2 Cappuccinos

-- Comanda 2 (Beatriz Nogueira) - 1 tipo de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(2, 4, 3);  -- 3 Lattes

-- Comanda 3 (Felipe Martins) - 3 tipos de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(3, 2, 2),  -- 2 Americanos
(3, 5, 1),  -- 1 Mocha
(3, 8, 1);  -- 1 Café Gelado

-- Comanda 4 (Camila Ferreira) - 2 tipos de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(4, 1, 2),  -- 2 Expressos
(4, 6, 2);  -- 2 Cafés com Leite

-- Comanda 5 (Ricardo Lima) - 1 tipo de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(5, 7, 3);  -- 3 Macchiatos

-- Comanda 6 (Patrícia Mendes) - 4 tipos de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(6, 1, 1),  -- 1 Expresso
(6, 3, 1),  -- 1 Cappuccino
(6, 5, 2),  -- 2 Mochas
(6, 4, 1);  -- 1 Latte

-- Comanda 7 (Eduardo Silva) - 2 tipos de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(7, 2, 1),  -- 1 Americano
(7, 8, 2);  -- 2 Cafés Gelados

-- Comanda 8 (Larissa Oliveira) - 1 tipo de café
INSERT INTO item_comanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(8, 3, 3);  -- 3 Cappuccinos
