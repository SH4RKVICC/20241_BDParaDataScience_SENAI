-- Select para empréstimos por gênero;

SELECT tb_genero.nomeGenero, COUNT(tb_emprestimo.id_emprestimo)
FROM tb_emprestimo
RIGHT JOIN tb_livro
ON tb_emprestimo.id_livro = tb_livro.id_livro
INNER JOIN tb_genero
ON tb_livro.id_genero = tb_genero.id_genero
GROUP BY tb_genero.nomeGenero;