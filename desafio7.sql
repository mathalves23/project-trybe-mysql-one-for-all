SELECT
 	ar.nome_artista AS artista,
 	al.nome_album AS album,
  COUNT(se.usuario_id) AS seguidores
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo AS se ON se.artista_id = ar.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
