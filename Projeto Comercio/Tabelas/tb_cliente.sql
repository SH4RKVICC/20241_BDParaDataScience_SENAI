CREATE TABLE cliente(
    id_cliente SMALLINT IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    nomeSocial VARCHAR(150),
    genero VARCHAR(15) NOT NULL,
    dataNascimento DATE NOT NULL,
    documento VARCHAR(18) NOT NULL,
    tipoDocumento VARCHAR(2) NOT NULL
);

SELECT * FROM cliente;