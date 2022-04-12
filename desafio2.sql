SELECT
  COUNT(DISTINCT mu.musica_id) AS cancoes,
  COUNT(DISTINCT ar.artista_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.musica AS mu ON mu.album_id = al.album_id