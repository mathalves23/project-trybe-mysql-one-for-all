SELECT
  COUNT(hi.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS hi
JOIN SpotifyClone.usuario AS us ON us.usuario_id = hi.usuario_id
WHERE us.nome_usuario = "Bill";
