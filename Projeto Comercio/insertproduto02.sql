use comercio;

-- Inserção de 30.000 registros na tabela pedido
DECLARE @i INT = 1;
WHILE @i <= 30000
BEGIN
    DECLARE @id_cliente SMALLINT, @dataVenda DATE, @statusVenda VARCHAR(20), @tipoEntrega VARCHAR(20);
    
    -- Gera um id_cliente entre 1 e 1000
    SET @id_cliente = ABS(CHECKSUM(NEWID())) % 1000 + 1;
    
    -- Gera uma data de venda aleatória entre 01/01/2017 e 31/12/2023
    SET @dataVenda = DATEADD(DAY, (ABS(CHECKSUM(NEWID())) % DATEDIFF(DAY, '2017-01-01', '2023-12-31')), '2017-01-01');
    
    -- Gera um status de venda aleatório
    SET @statusVenda = CASE ABS(CHECKSUM(NEWID())) % 4
        WHEN 0 THEN 'Pendente'
        WHEN 1 THEN 'Processando'
        WHEN 2 THEN 'Enviado'
        WHEN 3 THEN 'Concluído'
    END;
    
    -- Gera um tipo de entrega aleatório
    SET @tipoEntrega = CASE ABS(CHECKSUM(NEWID())) % 3
        WHEN 0 THEN 'Normal'
        WHEN 1 THEN 'Expresso'
        WHEN 2 THEN 'Retirada'
    END;
    
    INSERT INTO pedido (id_cliente, dataVenda, statusVenda, tipoEntrega)
    VALUES (@id_cliente, @dataVenda, @statusVenda, @tipoEntrega);
    
    SET @i = @i + 1;
END

use comercio;
-- Visualizar os dados inseridos
SELECT * FROM produto;