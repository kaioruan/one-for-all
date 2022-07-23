SELECT usuarios.usuario, COUNT(historico.usuario_id) AS 'qtde_musicas_ouvidas',
ROUND((SUM(musicas.duracao_segundos) / 60), 2) AS 'total_minutos' 
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico AS historico
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.musicas AS musicas
ON musicas.musica_id = historico.musica_id
GROUP BY usuarios.usuario ORDER BY usuarios.usuario;