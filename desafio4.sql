SELECT usuarios.usuario AS 'usuario', IF(
MAX(YEAR(historico.data_reproducao) = 2021), 'Usuário ativo', 'Usuário inativo'
) AS 'condicao_usuario'
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico AS historico
ON usuarios.usuario_id = historico.usuario_id
GROUP BY usuarios.usuario ORDER BY usuarios.usuario;