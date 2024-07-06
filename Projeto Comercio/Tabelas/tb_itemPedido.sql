CREATE TABLE itemPedido(
    id_itemPedido SMALLINT IDENTITY PRIMARY KEY,
    id_pedido SMALLINT,
	id_produto SMALLINT,
	quantidade INT,
	valorUnitario FLOAT (5),
	valorTotal FLOAT (5)
);

SELECT * FROM itemPedido;