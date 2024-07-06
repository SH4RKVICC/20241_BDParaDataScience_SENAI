use comercio;

--- Select para tabela cliente
SELECT * FROM cliente;
SELECT * FROM cliente WHERE nomeSocial= 'N\A';
SELECT * FROM cliente WHERE nome like 'G%';
SELECT * FROM cliente WHERE nome like '%A';
SELECT * FROM cliente WHERE nome like 'G%' AND nome like '%a';
SELECT * FROM cliente WHERE tipoDocumento = 'CP';
SELECT nome, dataNascimento FROM cliente;
SELECT COUNT(*) AS total_clientes FROM cliente;
SELECT 8 FROM cliente ORDER BY nome ASC;
SELECT 8 FROM cliente ORDER BY nome DESC;
SELECT * FROM cliente WHERE nomeSocial IS NULL;

SELECT cliente.id_cliente, cliente.nome, contato.telefone, contato.celular
FROM cliente INNER JOIN contato ON cliente.id_cliente = contato.id_cliente;

SELECT cliente.id_cliente, cliente.nome, contato.telefone, contato.celular,
    endereco.logradouro, endereco.numero, endereco.bairro, endereco.cidade
    FROM cliente
    INNER JOIN contato ON cliente.id_cliente = contato.id_cliente
    INNER JOIN endereco ON cliente.id_cliente = endereco.id_cliente; 
