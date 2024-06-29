CREATE TABLE endereco(
    id_endereco SMALLINT IDENTITY PRIMARY KEY,
	logradouro VARCHAR(150) NOT NULL,
	numero VARCHAR(100) NOT NULL,
	complemento VARCHAR(100),
	bairro VARCHAR(100) NOT NULL,
	cidade VARCHAR(60) NOT NULL,
	uf VARCHAR(4) NOT NULL,
	id_cliente SMALLINT,
	id_fornecedor SMALLINT,
	CONSTRAINT fk_endereco_cliente FOREIGN KEY (id_cliente)
	REFERENCES cliente(id_cliente),
	CONSTRAINT fk_endereco_fornecedor FOREIGN KEY (id_fornecedor)
	REFERENCES fornecedor(id_fornecedor),
);

SELECT * FROM endereco;