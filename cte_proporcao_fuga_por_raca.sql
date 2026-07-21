--Qual raça tem a maior proporção de vítimas que tentaram fugir?
WITH raca AS (
     SELECT DISTINCT race, count(*) AS total
      FROM shootings
      GROUP BY race
),
tentativa_de_fuga AS (
     SELECT race , count(*) AS total_fuga
     FROM shootings
     WHERE flee_status != 'not'
     GROUP BY race
)
SELECT t1.race, t1.total, t2.total_fuga,
ROUND(t2.total_fuga * 100.0 / t1.total, 2) AS pct
FROM raca AS t1
JOIN tentativa_de_fuga AS t2 ON t2.race = t1.race
ORDER BY pct DESC