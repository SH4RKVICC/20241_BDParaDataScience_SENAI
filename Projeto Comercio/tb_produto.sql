CREATE TABLE produto(
	id_produto SMALLINT IDENTITY PRIMARY KEY,
	id_categoria SMALLINT,
	id_fornecedor SMALLINT,
	nomeProduto VARCHAR(100),
	marca VARCHAR(100),
	valor FLOAT(5),
	descricao VARCHAR(250),
	CONSTRAINT fk_produto_categoria FOREIGN KEY (id_categoria)
	REFERENCES categoria(id_categoria),
	CONSTRAINT fk_produto_fornecedor FOREIGN KEY (id_fornecedor)
	REFERENCES fornecedor(id_fornecedor),
);

SELECT * FROM produto;