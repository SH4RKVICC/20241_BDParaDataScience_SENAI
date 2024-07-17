CREATE TABLE tb_autor (
    id_autor SMALLINT IDENTITY PRIMARY KEY,
    nomeAutor VARCHAR(150) NOT NULL,
    generoAutor VARCHAR(1) NOT NULL,
);

ELECT * FROM tb_autor;