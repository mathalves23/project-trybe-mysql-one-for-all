SELECT
 	mu.musica AS nome,
 	COUNT(hi.usuario_id) AS reproducoes
 FROM SpotifyClone.historico AS hi
 JOIN SpotifyClone.musica AS mu ON mu.musica_id = hi.musica_id
 JOIN SpotifyClone.usuario AS us ON us.usuario_id = hi.usuario_id
 WHERE us.plano_id = 1 OR us.plano_id = 3
 GROUP BY mu.musica
 ORDER BY mu.musica;
