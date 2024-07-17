CREATE TABLE tb_livro(
	id_livro SMALLINT IDENTITY PRIMARY KEY,
	id_editora SMALLINT,
	id_fornecedor SMALLINT,
	nomeLivro VARCHAR(100),
	marca VARCHAR(100),
	valor FLOAT(5),
	descricao VARCHAR(250),
	CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria)
	REFERENCES categoria(id_categoria),
	CONSTRAINT fk_produto_fornecedor FOREIGN KEY (id_fornecedor)
	REFERENCES fornecedor(id_fornecedor),
);

SELECT * FROM tb_livro;