--Qual raça tem a maior proporção de vítimas que tentaram fugir?
WITH proporção_por_raca AS (
     SELECT
          race,
          COUNT(*) AS total_vitimas,
          SUM(
               CASE
                    WHEN flee_status != 'not' THEN 1
                    ELSE 0
               END
          ) AS total_tentativas_fuga
     FROM shootings
     WHERE race IS NOT NULL
     GROUP BY race
)
SELECT
     race,
     total_vitimas,
     total_tentativas_fuga,
     ROUND(total_tentativas_fuga * 100.0 / total_vitimas, 2) AS pct_fuga
FROM proporção_por_raca
ORDER BY
     pct_fuga DESC,
     race
