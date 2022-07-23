SELECT (SELECT COUNT(M.musica) FROM SpotifyClone.musicas AS M) AS cancoes,
(SELECT COUNT(ART.artista) FROM SpotifyClone.artistas AS ART) AS artistas,
(SELECT COUNT(ALB.album) FROM SpotifyClone.albums AS ALB) AS albuns;