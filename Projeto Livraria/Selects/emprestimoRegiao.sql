-- Select para empréstimos por região;

SELECT tb_regiao.siglaRegiao, COUNT(tb_emprestimo.id_emprestimo) AS qtdeEmprestimo
FROM tb_emprestimo
INNER JOIN tb_usuario
ON tb_emprestimo.id_usuario - tb_usuario.id_usuario
INNER JOIN tb_regiao
ON tb_usuario.id_regiao = tb_regiao.id_regiao
GROUP BY tb_regiao.nomeRegiao;