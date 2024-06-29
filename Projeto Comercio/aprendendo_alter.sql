-- Adicionando colunas na tabela;
ALTER TABLE itemPedido
ADD totalItemPedido FLOAT(5);

ALTER TABLE itemPedido
ADD CONSTRAINT fk_itemPedido_pedido FOREIGN KEY(id_pedido)
REFERENCES pedido(id_pedido);

ALTER TABLE itemPedido
ADD CONSTRAINT fk_itemPedido_produto FOREIGN KEY(id_produto)
REFERENCES produto(id_produto);

-- Removendo colunas da tabela;
ALTER TABLE cliente
DROP COLUMN cnpj;