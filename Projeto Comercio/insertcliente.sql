use comercio;
DECLARE @Nomes TABLE (nome VARCHAR(150));
INSERT INTO @Nomes (nome) VALUES
('João Silva'), ('Maria Souza'), ('Pedro Oliveira'), ('Ana Pereira'), ('José Santos'), 
('Paulo Almeida'), ('Claudia Costa'), ('Carlos Fernandes'), ('Mariana Ferreira'), 
('Rafael Lima'), ('Fernanda Gomes'), ('Luciana Rocha'), ('Juliana Carvalho'), 
('Rodrigo Ribeiro'), ('Patricia Martins'), ('Renato Lopes'), ('Beatriz Nunes'), 
('Fábio Melo'), ('Camila Araujo'), ('Leonardo Moreira'), ('Vinicius Correia'), 
('Gabriela Cunha'), ('Thiago Castro'), ('Tatiana Cardoso'), ('Ricardo Pinto'), 
('Larissa Dias'), ('Eduardo Teixeira'), ('Bianca Mendes'), ('André Barbosa'), 
('Roberta Almeida'), ('Gustavo Lima'), ('Sabrina Freitas'), ('Leandro Silva'), 
('Mariana Gonçalves'), ('Daniel Pereira'), ('Vanessa Ferreira'), ('Lucas Oliveira'), 
('Isabela Costa'), ('Felipe Fernandes'), ('Renata Carvalho'), ('Bruno Ribeiro'), 
('Vivian Martins'), ('Miguel Lopes'), ('Aline Nunes'), ('Victor Melo'), 
('Nathalia Araujo'), ('Caio Moreira'), ('Marcos Correia'), ('Isabela Cunha'), 
('Igor Castro'), ('Débora Cardoso'), ('Fernando Pinto'), ('Lara Dias'), 
('Matheus Teixeira'), ('Evelyn Mendes'), ('Roberto Barbosa'), ('Alice Almeida'), 
('Samuel Lima'), ('Tamires Freitas'), ('Joana Silva'), ('Antônio Souza'), 
('Flávia Oliveira'), ('Diego Pereira'), ('Julio Santos'), ('Eliane Almeida'), 
('Cristiano Costa'), ('Rafaela Fernandes'), ('Vitor Ferreira'), ('Melissa Rocha'), 
('Helena Carvalho'), ('Alberto Ribeiro'), ('Elaine Martins'), ('Rogério Lopes'), 
('Daniela Nunes'), ('César Melo'), ('Bruna Araujo'), ('Gustavo Moreira'), 
('Mirella Correia'), ('Alessandro Cunha'), ('Letícia Castro'), ('Augusto Cardoso'), 
('Vânia Pinto'), ('Murilo Dias'), ('Cláudio Teixeira'), ('Tatiana Mendes'), 
('Danilo Barbosa'), ('Lorena Almeida'), ('Sérgio Lima'), ('Fabiana Freitas'), 
('Ronaldo Silva'), ('Natália Souza'), ('Luís Oliveira'), ('Cristina Pereira'), 
('Mário Santos'), ('Mônica Almeida');

DECLARE @i INT = 1;
WHILE @i <= 1000
BEGIN
    DECLARE @nome VARCHAR(150), @nomeSocial VARCHAR(150), @genero VARCHAR(15), 
            @dataNascimento DATE, @documento VARCHAR(18), @tipoDocumento VARCHAR(2);
    
    -- Selecionar nome aleatório
    SELECT TOP 1 @nome = Nome FROM @Nomes ORDER BY NEWID();
    
    -- Nome social pode ser nulo ou igual ao nome
    IF (RAND() < 0.5)
        SET @nomeSocial = @nome;
    ELSE
        SET @nomeSocial = NULL;
    
    -- Gênero aleatório
    IF (RAND() < 0.5)
        SET @genero = 'Masculino';
    ELSE
        SET @genero = 'Feminino';
    
    -- Data de nascimento aleatória entre 01/01/1970 e 31/12/2003
    SET @dataNascimento = DATEADD(DAY, (ABS(CHECKSUM(NEWID())) % 12418), '1970-01-01');
    
    -- Documento aleatório (CPF ou RG)
    IF (RAND() < 0.5)
    BEGIN
        SET @tipoDocumento = 'CPF';
        SET @documento = 
            RIGHT(REPLICATE('0', 11) + CAST(ABS(CHECKSUM(NEWID())) % 99999999999 AS VARCHAR(11)), 11);
    END
    ELSE
    BEGIN
        SET @tipoDocumento = 'RG';
        SET @documento = 
            RIGHT(REPLICATE('0', 9) + CAST(ABS(CHECKSUM(NEWID())) % 999999999 AS VARCHAR(9)), 9);
    END
    
    -- Inserir na tabela cliente
    INSERT INTO cliente (nome, nomeSocial, genero, dataNascimento, documento, tipoDocumento)
    VALUES (@nome, @nomeSocial, @genero, @dataNascimento, @documento, @tipoDocumento);
    
    SET @i = @i + 1;
END

select*from cliente;
--drop table cliente;