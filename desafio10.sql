SELECT musicas.musica AS nome, COUNT(historico.musica_id) AS reproducoes
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico AS historico
ON usuarios.usuario_id = historico.usuario_id
AND (usuarios.plano_id =1 OR usuarios.plano_id = 4)
INNER JOIN SpotifyClone.musicas AS musicas
ON musicas.musica_id = historico.musica_id
GROUP BY musicas.musica
ORDER BY musicas.musica ASC;