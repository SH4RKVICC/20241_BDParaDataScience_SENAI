CREATE TABLE tb_emprestimo (
    id_emprestimo SMALLINT IDENTITY PRIMARY KEY,
    id_usuario SMALLINT,
    id_livro SMALLINT,
    dataEmprestimo DATE NOT NULL,
    horaEmprestimo TIME NOT NULL,
    CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (id_usuario)
    REFERENCES tb_usuario(id_usuario),
    CONSTRAINT fk_emprestimo_livro FOREIGN KEY (id_livro)
    REFERENCES tb_livro(id_livro)
);


SELECT * FROM tb_usuario;