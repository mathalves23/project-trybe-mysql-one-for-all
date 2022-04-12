SELECT
 	mu.musica AS cancao,
 	COUNT(hi.data_reproducao) AS reproducoes
 FROM SpotifyClone.historico AS hi
 INNER JOIN SpotifyClone.musica AS mu ON mu.musica_id = hi.musica_id
 GROUP BY cancao
 ORDER BY reproducoes DESC, cancao
 LIMIT 2;
