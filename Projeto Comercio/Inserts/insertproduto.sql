use comercio;
-- Tabela temporária com nomes de produtos e marcas reais
DECLARE @Produtos TABLE (
    nomeProduto VARCHAR(100),
    marca VARCHAR(100)
);

-- Inserir alguns produtos e marcas reais (este é um exemplo; adicione mais conforme necessário)
INSERT INTO @Produtos (nomeProduto, marca) VALUES
('Notebook Aspire 5', 'Acer'),
('Smartphone Galaxy S21', 'Samsung'),
('Monitor UltraSharp', 'Dell'),
('Teclado Mecânico K95', 'Corsair'),
('Mouse DeathAdder', 'Razer'),
('Impressora LaserJet Pro', 'HP'),
('Placa de Vídeo GeForce RTX 3080', 'NVIDIA'),
('Memória RAM Vengeance', 'Corsair'),
('Disco Rígido BarraCuda', 'Seagate'),
('SSD 970 EVO', 'Samsung'),
('Fonte de Alimentação RM850x', 'Corsair'),
('Gabinete H510', 'NZXT'),
('Smartphone iPhone 13', 'Apple'),
('Notebook XPS 13', 'Dell'),
('Tablet iPad Air', 'Apple'),
('Headset G733', 'Logitech'),
('Webcam C920', 'Logitech'),
('Roteador Archer AX50', 'TP-Link'),
('Switch SG108', 'TP-Link'),
('Impressora EcoTank L3150', 'Epson');

-- Inserção de 1030 produtos
DECLARE @i INT = 1;
WHILE @i <= 1030
BEGIN
    DECLARE @id_categoria SMALLINT, @id_fornecedor SMALLINT, @nomeProduto VARCHAR(100),
            @marca VARCHAR(100), @valor FLOAT, @descricao VARCHAR(250);
    
    SET @id_categoria = ABS(CHECKSUM(NEWID())) % 10 + 1;  -- Gera um valor entre 1 e 10
    SET @id_fornecedor = ABS(CHECKSUM(NEWID())) % 30 + 1; -- Gera um valor entre 1 e 30
    
    SELECT TOP 1 @nomeProduto = nomeProduto, @marca = marca FROM @Produtos ORDER BY NEWID();
    SET @valor = ROUND(100 + (RAND() * 900), 2); -- Gera um valor aleatório entre 100 e 1000
    SET @descricao = CONCAT('Descrição do produto ', @nomeProduto, ' da marca ', @marca);
    
    INSERT INTO produto (id_categoria, id_fornecedor, nomeProduto, marca, valor, descricao)
    VALUES (@id_categoria, @id_fornecedor, @nomeProduto, @marca, @valor, @descricao);
    
    SET @i = @i + 1;
END

-- Visualizar os dados inseridos
SELECT * FROM produto;