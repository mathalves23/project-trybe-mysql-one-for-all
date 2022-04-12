SELECT
  ar.nome_artista AS artista,
  al.nome_album AS album
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON al.artista_id = ar.artista_id
WHERE ar.nome_artista = 'Walter Phoenix';

