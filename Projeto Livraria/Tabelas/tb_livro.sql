CREATE TABLE tb_livro(
	id_livro SMALLINT IDENTITY PRIMARY KEY,
	nomeLivro VARCHAR(100),
	sinopse VARCHAR(800),
	CONSTRAINT fk_livro_editora FOREIGN KEY (id_editora)
	REFERENCES tb_editora(id_editora),
	CONSTRAINT fk_livro_genero FOREIGN KEY (id_genero)
	REFERENCES tb_genero(id_genero),
);

SELECT * FROM tb_livro;