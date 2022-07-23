DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(20) NOT NULL
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

CREATE TABLE SpotifyClone.albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(30) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.artistas (artista_id)
)  ENGINE=INNODB;


INSERT INTO SpotifyClone.albums (album, artista_id, ano_lancamento)
VALUES
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 4, 2001),
  ('Library of liberty', 4, 2003),
  ('Chained Down', 5, 2007),
  ('Cabinet of fools', 5, 2012),
  ('No guarantees', 5, 2015),
  ('Apparatus', 6, 2015);

 CREATE TABLE SpotifyClone.musicas (
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(80) NOT NULL,
    album_id INT NOT NULL,
    artista_id INT NOT NULL,
    duracao_segundos INT NOT NULL,
	FOREIGN KEY (artista_id)
		REFERENCES SpotifyClone.artistas (artista_id),
	FOREIGN KEY (artista_id)
		REFERENCES SpotifyClone.albums (album_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.musicas (musica, album_id, artista_id, duracao_segundos)
VALUES
  ('Soul For Us', 1, 1, 200),
  ('Reflections Of Magic', 1, 1, 163),
  ('Dance With Her Own', 1, 1, 116),
  ('Troubles Of My Inner Fire', 2, 1, 203),
  ('Time Fireworks', 2, 1, 152),
  ('Magic Circus',  3, 2, 105),
  ('Honey, So Do I', 3, 2, 207),
  ("Sweetie, Let's Go Wild", 3, 2, 139),
  ('She Knows', 3, 2, 244),
  ('Fantasy For Me', 4, 3, 100),
  ('Celebration Of More', 4, 3, 146),
  ('Rock His Everything', 4, 3, 223),
  ('Home Forever', 4, 3, 231),
  ('Diamond Power', 4, 3, 241),
  ("Let's Be Silly", 4, 3, 132),
  ('Thang Of Thunder', 5, 4, 240),
  ('Words Of Her Life', 5, 4, 185),
  ('Without My Streets', 5, 4, 176),
  ('Need Of The Evening', 6, 4, 190),
  ('History Of My Roses', 6, 4, 222),
  ('Without My Love', 6, 4, 111),
  ('Walking And Game', 6, 4, 123),
  ('Young And Father', 6, 4, 197),
  ('Finding My Traditions', 7, 5, 179),
  ('Walking And Man', 7, 5, 229),
  ('Hard And Time', 7, 5, 135),
  ("Honey, I'm A Lone Wolf", 7, 5, 150),
  ("She Thinks I Won't Stay Tonight", 8, 5, 166),
  ("He Heard You're Bad For Me", 8, 5, 154),
  ("He Hopes We Can't Stay", 8, 5, 210),
  ('I Know I Know', 8, 5, 117),
  ("He's Walking Away", 9, 5, 159),
  ("He's Trouble", 9, 5, 138),
  ('I Heard I Want To Bo Alone', 9, 5, 120),
  ('I Ride Alone', 9, 5, 151),
  ('Honey', 10, 6, 79),
  ('You Cheated On Me', 10, 6, 95),
  ("Wouldn't It Be Nice", 10, 6, 213),
  ('Baby', 10, 6, 136),
  ('You Make Me Feel So..', 10, 6, 83);