SELECT musicas.musica AS nome_musica, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(musicas.musica, "Circus", "Pull Request"),
"Silly", "Nice"), "Inner Fire", "Project"), "Her Own", "Trybe"), "Streets", "Code Review") AS novo_nome
FROM SpotifyClone.musicas AS musicas
WHERE musicas.musica IN('Dance With Her Own',
"Let's Be Silly", 'Magic Circus', 'Troubles Of My Inner Fire',
'Without My Streets')
ORDER BY musicas.musica;