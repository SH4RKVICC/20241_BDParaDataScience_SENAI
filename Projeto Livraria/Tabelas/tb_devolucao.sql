CREATE TABLE tb_devolucao (
    id_devolucao SMALLINT IDENTITY PRIMARY KEY,
    id_emprestimo SMALLINT,
    dataDevolucao DATE NOT NULL,
    devolvidoPrazo BOOLEAN NOT NULL,
    CONSTRAINT fk_devolucao_emprestimo FOREIGN KEY (id_emprestimo)
    REFERENCES tb_emprestimo(id_emprestimo)
);


SELECT * FROM tb_devolucao;