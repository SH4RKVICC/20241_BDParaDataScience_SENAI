USE comercio;

--- preenchendo coluna nomeSocial;
INSERT INTO cliente (nome, nomeSocial, genero, dataNascimento, documento, tipoDocumento)
			VALUES ('Tio Patinhas', 'n/a', 'Masculino','1950-03-03', '123.456.789-98', 'CPF');

--- NÃO preenchendo coluna nomeSocial;
INSERT INTO cliente (nome, genero, dataNascimento, documento, tipoDocumento)
			VALUES ('Docinho', 'Feminino', '2000-12-31', '987.654.321-89', 'CPF');

--- preenchendo mais de uma tupla por vez;
INSERT INTO cliente (nome, genero, dataNascimento, documento, tipoDocumento)
			VALUES ('Lindinha', 'N/A', 'Feminino', '2000-02-06','147.258.369-87','CPF'),
					('Florzinha', 'N/A', 'Feminino', '2000-11-24', '369.258.147-65','CPF'),
					('Silvestre Star Longe', 'Stalone', 'Masculino', '1960-05-23', '381.241.156-23','CPF'),
					('Aroldo Chuxu e as Nega', 'N/A', 'Masculino', '1961-03-02', '246.359.167-65','CPF');

			SELECT * FROM cliente;