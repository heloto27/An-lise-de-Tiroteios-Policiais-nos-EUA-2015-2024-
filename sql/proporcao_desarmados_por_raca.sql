-- Qual a proporção de vítimas desarmadas por raça?
SELECT armed_with,
SUM (CASE WHEN race='B' THEN 1 ELSE 0 END ) AS negros,
SUM (CASE WHEN race='W' THEN 1 ELSE 0 END ) AS brancos,
ROUND(SUM (CASE WHEN race='B' THEN 1 ELSE 0 END) * 100.0/ COUNT(*),2) AS pct_negros,
ROUND(SUM (CASE WHEN race='W' THEN 1 ELSE 0 END) * 100.0/ COUNT(*),2) AS pct_brancos
FROM shootings
GROUP BY armed_with
ORDER BY pct_negros DESC
