SELECT COUNT(historico.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico AS historico
ON usuarios.usuario_id = historico.usuario_id
WHERE usuarios.usuario LIKE 'Bill'
GROUP BY usuarios.usuario;