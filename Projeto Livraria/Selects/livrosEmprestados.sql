-- Select para os 10 livros mais emprestados e os 10 menos emprestados;

--- 10 MAIS EMPRESTADOS
SELECT tb_livro.nomeLivro, COUNT(tb_emprestimo.id_emprestimo) AS qtdeEmprestimo
FROM tb_emprestimo
INNER JOIN tb_livro
ON tb_emprestimo.id_livro = tb_livro.id_livro
GROUP BY tb_livro.nomeLivro
ORDER BY qtdeEmprestimo DESC
LIMIT 10;

--- 10 MENOS EMPRESTADOS

SELECT tb_livro.nomeLivro, COUNT(tb_emprestimo.id_emprestimo) AS qtdeEmprestimo
FROM tb_emprestimo
INNER JOIN tb_livro
ON tb_emprestimo.id_livro = tb_livro.id_livro
GROUP BY tb_livro.nomeLivro
ORDER BY qtdeEmprestimo ASC
LIMIT 10;