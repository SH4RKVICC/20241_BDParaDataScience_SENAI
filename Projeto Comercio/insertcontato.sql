use comercio;

-- Inserção de 1000 contatos para clientes
DECLARE @i INT = 1;
WHILE @i <= 1000
BEGIN
    DECLARE @id_cliente SMALLINT, @telefone VARCHAR(15), @celular VARCHAR(18), @randomEmail VARCHAR(150);
    
    SET @id_cliente = @i;
    SET @telefone = CONCAT('11 3', RIGHT(CAST(1000000 + ABS(CHECKSUM(NEWID())) % 9000000 AS VARCHAR), 7));
    SET @celular = CONCAT('11 9', RIGHT(CAST(100000000 + ABS(CHECKSUM(NEWID())) % 900000000 AS VARCHAR), 8));
    SET @randomEmail = CONCAT('cliente', @id_cliente, '@exemplo.com');
    
    INSERT INTO contato (id_cliente, telefone, celular, email)
    VALUES (@id_cliente, @telefone, @celular, @randomEmail);
    
    SET @i = @i + 1;
END

-- Inserção de 30 contatos para fornecedores
DECLARE @j INT = 1;
WHILE @j <= 30
BEGIN
    DECLARE @id_fornecedor SMALLINT, @telefoneFornecedor VARCHAR(15), @celularFornecedor VARCHAR(18), @randomEmailFornecedor VARCHAR(150);
    
    SET @id_fornecedor = @j;
    SET @telefoneFornecedor = CONCAT('11 3', RIGHT(CAST(1000000 + ABS(CHECKSUM(NEWID())) % 9000000 AS VARCHAR), 7));
    SET @celularFornecedor = CONCAT('11 9', RIGHT(CAST(100000000 + ABS(CHECKSUM(NEWID())) % 900000000 AS VARCHAR), 8));
    SET @randomEmailFornecedor = CONCAT('fornecedor', @id_fornecedor, '@exemplo.com');
    
    INSERT INTO contato (id_fornecedor, telefone, celular, email)
    VALUES (@id_fornecedor, @telefoneFornecedor, @celularFornecedor, @randomEmailFornecedor);
    
    SET @j = @j + 1;
END

-- Visualizar os dados inseridos
SELECT * FROM contato;