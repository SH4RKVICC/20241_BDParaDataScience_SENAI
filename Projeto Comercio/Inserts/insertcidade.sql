use comercio;

-- Declaração das cidades e estados do Brasil
DECLARE @Cidades TABLE (
    cidade VARCHAR(60),
    uf VARCHAR(4)
);

INSERT INTO @Cidades (cidade, uf) VALUES
('São Paulo', 'SP'), ('Rio de Janeiro', 'RJ'), ('Belo Horizonte', 'MG'),
('Salvador', 'BA'), ('Fortaleza', 'CE'), ('Brasília', 'DF'),
('Curitiba', 'PR'), ('Manaus', 'AM'), ('Recife', 'PE'),
('Porto Alegre', 'RS'), ('Belém', 'PA'), ('Goiânia', 'GO'),
('Guarulhos', 'SP'), ('Campinas', 'SP'), ('São Luís', 'MA'),
('São Gonçalo', 'RJ'), ('Maceió', 'AL'), ('Duque de Caxias', 'RJ'),
('Natal', 'RN'), ('Teresina', 'PI'), ('Campo Grande', 'MS'),
('São Bernardo do Campo', 'SP'), ('João Pessoa', 'PB'), ('Nova Iguaçu', 'RJ'),
('Santo André', 'SP'), ('Osasco', 'SP'), ('São José dos Campos', 'SP'),
('Jaboatão dos Guararapes', 'PE'), ('Ribeirão Preto', 'SP'), ('Uberlândia', 'MG');

-- Inserção de 1000 endereços para clientes
DECLARE @i INT = 1;
WHILE @i <= 1000
BEGIN
    DECLARE @logradouro VARCHAR(150), @numero VARCHAR(100), @complemento VARCHAR(100),
            @bairro VARCHAR(100), @cidade VARCHAR(60), @uf VARCHAR(4), @cep VARCHAR(12), @id_cliente SMALLINT;
    
    -- Selecionar um cliente e cidade aleatória
    SET @id_cliente = @i;
    SELECT TOP 1 @cidade = cidade, @uf = uf FROM @Cidades ORDER BY NEWID();
    
    -- Gerar dados de endereço aleatórios
    SET @logradouro = CONCAT('Rua ', ABS(CHECKSUM(NEWID())) % 1000);
    SET @numero = CAST(ABS(CHECKSUM(NEWID())) % 1000 AS VARCHAR);
    SET @complemento = CONCAT('Apto ', ABS(CHECKSUM(NEWID())) % 500);
    SET @bairro = CONCAT('Bairro ', ABS(CHECKSUM(NEWID())) % 500);
    SET @cep = CONCAT(RIGHT('00000' + CAST(ABS(CHECKSUM(NEWID())) % 100000 AS VARCHAR), 5), '-', RIGHT('000' + CAST(ABS(CHECKSUM(NEWID())) % 1000 AS VARCHAR), 3));
    
    INSERT INTO endereco (logradouro, numero, complemento, bairro, cidade, uf, cep, id_cliente)
    VALUES (@logradouro, @numero, @complemento, @bairro, @cidade, @uf, @cep, @id_cliente);
    
    SET @i = @i + 1;
END

-- Inserção de 30 endereços para fornecedores
DECLARE @j INT = 1;
WHILE @j <= 30
BEGIN
    DECLARE @logradouroFornecedor VARCHAR(150), @numeroFornecedor VARCHAR(100), @complementoFornecedor VARCHAR(100),
            @bairroFornecedor VARCHAR(100), @cidadeFornecedor VARCHAR(60), @ufFornecedor VARCHAR(4), @cepFornecedor VARCHAR(12), @id_fornecedor SMALLINT;
    
    -- Selecionar um fornecedor e cidade aleatória
    SET @id_fornecedor = @j;
    SELECT TOP 1 @cidadeFornecedor = cidade, @ufFornecedor = uf FROM @Cidades ORDER BY NEWID();
    
    -- Gerar dados de endereço aleatórios
    SET @logradouroFornecedor = CONCAT('Av ', ABS(CHECKSUM(NEWID())) % 1000);
    SET @numeroFornecedor = CAST(ABS(CHECKSUM(NEWID())) % 1000 AS VARCHAR);
    SET @complementoFornecedor = CONCAT('Sala ', ABS(CHECKSUM(NEWID())) % 100);
    SET @bairroFornecedor = CONCAT('Bairro ', ABS(CHECKSUM(NEWID())) % 500);
    SET @cepFornecedor = CONCAT(RIGHT('00000' + CAST(ABS(CHECKSUM(NEWID())) % 100000 AS VARCHAR), 5), '-', RIGHT('000' + CAST(ABS(CHECKSUM(NEWID())) % 1000 AS VARCHAR), 3));
    
    INSERT INTO endereco (logradouro, numero, complemento, bairro, cidade, uf, cep, id_fornecedor)
    VALUES (@logradouroFornecedor, @numeroFornecedor, @complementoFornecedor, @bairroFornecedor, @cidadeFornecedor, @ufFornecedor, @cepFornecedor, @id_fornecedor);
    
    SET @j = @j + 1;
END

-- Visualizar os dados inseridos
SELECT * FROM endereco;