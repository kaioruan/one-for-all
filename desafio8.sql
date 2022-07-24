SELECT artistas.artista, albums.album FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albums AS albums
ON artistas.artista_id = albums.artista_id
WHERE artistas.artista LIKE 'Walter Phoenix';