-- Qual a proporção de vítimas desarmadas por raça?

SELECT 
    race,
    COUNT(*) AS total_vitimas,
    SUM(
        CASE
            WHEN armed_with = 'unarmed' THEN 1
            ELSE 0
        END
    ) AS total_desarmadas,

    ROUND(
        SUM(
            CASE
                WHEN armed_with =  'unarmed' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*), 2
    ) AS pct_desarmadas

FROM shootings
WHERE race IS NOT NULL
GROUP BY race
ORDER BY pct_desarmadas DESC
