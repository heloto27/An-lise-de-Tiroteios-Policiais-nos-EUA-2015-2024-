-- Para cada estado, mostre o estado, total de ocorrências e o percentual que representa do total geral. 
-- Use subquery no SELECT.
SELECT 
    state, 
    COUNT(*) AS total_ocorrencias, 
    ROUND(
        COUNT(*) *100 / (
            SELECT COUNT(*) FROM shootings), 2
        ) AS percentual_do_total
FROM shootings
WHERE state IS NOT NULL 
GROUP BY state
ORDER BY total_ocorrencias DESC;