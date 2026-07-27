-- Em quais estados negros são mortos desproporcionalmente mais que brancos?
SELECT 
    state,
    COUNT(*) AS total_vitimas_negras_ou_brancas,
    SUM (CASE WHEN race='B' THEN 1 ELSE 0 END ) AS total_negros,
    SUM (CASE WHEN race='W' THEN 1 ELSE 0 END ) AS total_brancos,
    ROUND(
        SUM(CASE WHEN race='B' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS pct_negros,
    ROUND(
        SUM (CASE WHEN race='W' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS pct_brancos
FROM shootings
WHERE state IS NOT NULL
    AND race IN ('B', 'W')
GROUP BY state
HAVING
    SUM (CASE WHEN race='B' THEN 1 ELSE 0 END ) >
    SUM (CASE WHEN race='W' THEN 1 ELSE 0 END )
ORDER BY pct_negros DESC;