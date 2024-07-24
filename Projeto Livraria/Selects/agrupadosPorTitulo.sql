-- Select com os dados agrupados por titulo.

SELECT tb_livro.nomeLivro, COUNT(tb_emprestimo.id_emprestimo) AS qtdeEmprestimo
FROM tb_emprestimo
INNER JOIN tb_livro
ON tb_emprestimo.id_livro = tb_livro.id_livro
GROUP BY tb_livro.nomeLivro;