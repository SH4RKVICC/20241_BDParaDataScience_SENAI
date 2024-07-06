use comercio;

--- Select para tabela cliente!

-- Para ver todos os valores da tabela;
SELECT * FROM cliente;

-- Para ver clientes sem nome social;
SELECT * FROM cliente WHERE nomeSocial= 'N\A';

-- Para ver clientes que o nome se inicia com a letra G;
SELECT * FROM cliente WHERE nome like 'G%';

-- Para ver clientes que o nome termina com a letra G;
SELECT * FROM cliente WHERE nome like '%A';

-- Para ver clientes que o nome se inicia com a letra G e termina com a letra a;
SELECT * FROM cliente WHERE nome like 'G%' AND nome like '%a';

-- Para ver clientes que o tipo de documento corresponde a CP;
SELECT * FROM cliente WHERE tipoDocumento = 'CP';

-- Ver nome e data de nascimento dos clientes;
SELECT nome, dataNascimento FROM cliente;

-- Contagem de clientes;
SELECT COUNT(*) AS total_clientes
FROM cliente;

-- Ver 8 registros ordenados por nome ASC;
SELECT *
FROM cliente
ORDER BY nome ASC
LIMIT 8;

-- Ver 8 registros ordenados por nome DESC;
SELECT *
FROM cliente
ORDER BY nome DESC
LIMIT 8;

-- Ver clientes onde nomeSocial é NULL;
SELECT *
FROM cliente
WHERE nomeSocial IS NULL;

-- Detalhes de cliente com informações de contato;
SELECT c.id_cliente, c.nome, ct.telefone, ct.celular
FROM cliente c
INNER JOIN contato ct ON c.id_cliente = ct.id_cliente;

-- Detalhes completos de cliente com contato e endereço;
SELECT c.id_cliente, c.nome, ct.telefone, ct.celular,
       e.logradouro, e.numero, e.bairro, e.cidade
    FROM cliente
    INNER JOIN contato ct ON c.id_cliente = ct.id_cliente
    INNER JOIN endereco e ON c.id_cliente = e.id_cliente
    WHERE endereco.uf = 'BA' AND c.nome LIKE 'H%'
    OR endereco.uf = 'BA' AND c.nome LIKE 'B%';

SELECT uf, COUNT(*) AS Estado FROM endereco
    GROUP BY uf
    ORDER BY Estado ASC;

SELECT * FROM produto
SELECT COUNT(*) AS Total_Produto FROM produto;

