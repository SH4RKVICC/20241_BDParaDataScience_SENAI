USE comercio;

SELECT
    t.TABLE_SCHEMA AS 'Esquema',
    t.TABLE_NAME AS 'Nome da Tabela'
FROM INFORMATION_SCHEMA.TABLES t
ORDER BY t.TABLE_SCHEMA, t.TABLE_NAME;