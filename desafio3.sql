SELECT
    us.nome_usuario AS usuario,
    COUNT(mu.musica_id) AS qtde_musicas_ouvidas,
	ROUND(SUM(mu.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.historico AS hi
INNER JOIN SpotifyClone.musica AS mu ON mu.musica_id = hi.musica_id
INNER JOIN SpotifyClone.usuario AS us ON us.usuario_id = hi.usuario_id
GROUP BY usuario;