SELECT musicas.musica AS cancao, COUNT(historico.musica_id) AS reproducoes
 FROM SpotifyClone.musicas AS musicas
 INNER JOIN SpotifyClone.historico AS historico
 ON musicas.musica_id = historico.musica_id
 GROUP BY musicas.musica ORDER BY reproducoes DESC, cancao
 LIMIT 2;