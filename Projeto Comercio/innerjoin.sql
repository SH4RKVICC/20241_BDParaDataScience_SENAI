use comercio;
-- Criação da tabela itemPedido (se ainda não foi criada)
CREATE TABLE itemPedido(
    id_itemPedido SMALLINT IDENTITY PRIMARY KEY,
    id_pedido SMALLINT,
    id_produto SMALLINT,
    quantidade INT,
    valorUnitario FLOAT(5),
    valorTotal FLOAT(5)
);

-- Inserção de 40.000 registros na tabela itemPedido
DECLARE @i INT = 1;
WHILE @i <= 40000
BEGIN
    DECLARE @id_pedido SMALLINT, @id_produto SMALLINT, @quantidade INT, @valorUnitario FLOAT, @valorTotal FLOAT;
    
    -- Gera um id_pedido entre 1 e 32765
    SET @id_pedido = ABS(CHECKSUM(NEWID())) % 32765 + 1;
    
    -- Gera um id_produto entre 1 e 1030
    SET @id_produto = ABS(CHECKSUM(NEWID())) % 1030 + 1;
    
    -- Gera uma quantidade entre 1 e 10
    SET @quantidade = ABS(CHECKSUM(NEWID())) % 10 + 1;
    
    -- Recupera o valorUnitario do produto correspondente
    SELECT @valorUnitario = valor FROM produto WHERE id_produto = @id_produto;
    
    -- Calcula o valorTotal
    SET @valorTotal = @quantidade * @valorUnitario;
    
    INSERT INTO itemPedido (id_pedido, id_produto, quantidade, valorUnitario, valorTotal)
    VALUES (@id_pedido, @id_produto, @quantidade, @valorUnitario, @valorTotal);
    
    SET @i = @i + 1;
END

-- Visualizar os dados inseridos
SELECT * FROM itemPedido;

select* from pedido INNER JOIN itemPedido
ON pedido.id_pedido = itemPedido.id_pedido;