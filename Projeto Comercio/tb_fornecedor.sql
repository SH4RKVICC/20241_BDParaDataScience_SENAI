CREATE TABLE fornecedor(
    id_fornecedor SMALLINT IDENTITY PRIMARY KEY,
    nomeFornecedor VARCHAR(150) NOT NULL,
    cnpj VARCHAR(20) NOT NULL
);

SELECT * FROM fornecedor;