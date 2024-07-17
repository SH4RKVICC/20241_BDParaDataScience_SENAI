CREATE TABLE tb_regiao(
    id_regiao SMALLINT IDENTITY PRIMARY KEY,
    nomeRegiao VARCHAR(30) NOT NULL,
    siglaRegiao VARCHAR(2) NOT NULL,
);

SELECT * FROM tb_regiao;