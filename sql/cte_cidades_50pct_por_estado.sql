-- Quais cidades concentram mais de 50% das ocorrências do seu estado?
WITH cidades AS (
      SELECT city, state, count(*) AS total
      FROM shootings
      GROUP BY city, state

),
total_de_mortes AS (
      SELECT state, count(*) AS total_estado
      FROM shootings
      GROUP BY state
)
SELECT t1.city, t1.state, t1.total, t2.total_estado,
ROUND(t1.total * 100.0 / t2.total_estado, 2) AS pct
FROM cidades AS t1
LEFT JOIN total_de_mortes AS t2
ON t2.state=t1.state
WHERE t1.total * 100.0 / t2.total_estado > 50
