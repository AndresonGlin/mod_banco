-- 1) Listagem do cardápio ordenada por nome
SELECT nome, descricao, preco_unitario
FROM cardapio
ORDER BY nome;

-- 2) Comandas e itens ordenados por data, código da comanda e nome do café
SELECT 
    c.codigo AS codigo_comanda,
    c.data,
    c.numero_mesa AS mesa,
    c.nome_cliente,
    ca.nome AS nome_cafe,
    ca.descricao,
    ic.quantidade,
    ca.preco_unitario,
    (ic.quantidade * ca.preco_unitario) AS preco_total
FROM comanda c
INNER JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
ORDER BY c.data, c.codigo, ca.nome;

-- 3) Comandas com valor total ordenadas por data
SELECT 
    c.codigo,
    c.data,
    c.numero_mesa AS mesa,
    c.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total
FROM comanda c
INNER JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.codigo, c.data, c.numero_mesa, c.nome_cliente
ORDER BY c.data;

-- 4) Comandas com mais de um tipo de café
SELECT 
    c.codigo,
    c.data,
    c.numero_mesa AS mesa,
    c.nome_cliente,
    SUM(ic.quantidade * ca.preco_unitario) AS valor_total
FROM comanda c
INNER JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.codigo, c.data, c.numero_mesa, c.nome_cliente
HAVING COUNT(ic.codigo_cardapio) > 1
ORDER BY c.data;

-- 5) Total de faturamento por data
SELECT 
    c.data,
    SUM(ic.quantidade * ca.preco_unitario) AS faturamento_total
FROM comanda c
INNER JOIN item_comanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN cardapio ca ON ic.codigo_cardapio = ca.codigo
GROUP BY c.data
ORDER BY c.data;