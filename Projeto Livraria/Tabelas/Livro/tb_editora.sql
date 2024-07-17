CREATE TABLE tb_editora (
    id_editora SMALLINT IDENTITY PRIMARY KEY,
    nomeEditora VARCHAR(150) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
);

ELECT * FROM tb_editora;