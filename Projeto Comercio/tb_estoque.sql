CREATE TABLE estoque(
    id_estoque SMALLINT IDENTITY PRIMARY KEY,
    id_produto SMALLINT,
	quantidade INT,
	valorTotal FLOAT(5),
	CONSTRAINT fk_estoque_produto FOREIGN KEY (id_produto)
	REFERENCES produto(id_produto)
);

SELECT * FROM estoque;