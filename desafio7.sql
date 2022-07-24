SELECT artistas.artista AS artista, albums.album AS album,
COUNT(follow_list.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albums AS albums
ON artistas.artista_id = albums.artista_id
INNER JOIN SpotifyClone.follow_list AS follow_list
ON artistas.artista_id = follow_list.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
