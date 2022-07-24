SELECT ROUND(MIN(pagamento.valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(pagamento.valor_plano), 2) AS 'faturamento_maximo',
ROUND(AVG(pagamento.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(pagamento.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.pagamento AS pagamento
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.plano_id = pagamento.plano_id;