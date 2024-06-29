CREATE TABLE pedido(
    id_pedido SMALLINT IDENTITY PRIMARY KEY,
    id_cliente SMALLINT NOT NULL,
	dataVenda DATE NOT NULL,
	statusVenda VARCHAR(20) NOT NULL,
	tipoEntrega VARCHAR(20) NOT NULL
);

SELECT * FROM pedido;