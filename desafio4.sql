SELECT
  us.nome_usuario AS usuario,
  IF(MAX(hi.data_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historico AS hi
INNER JOIN SpotifyClone.usuario AS us ON us.usuario_id = hi.usuario_id
GROUP BY usuario
ORDER BY usuario;
