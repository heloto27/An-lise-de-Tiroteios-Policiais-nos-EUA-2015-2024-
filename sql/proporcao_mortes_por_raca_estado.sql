-- Em quais estados negros são mortos desproporcionalmente mais que brancos?
SELECT state,
COUNT(*) AS total,
SUM (CASE WHEN race='B' THEN 1 ELSE 0 END ) AS negros,
SUM (CASE WHEN race='W' THEN 1 ELSE 0 END ) AS brancos,
ROUND(SUM (CASE WHEN race='B' THEN 1 ELSE 0 END) * 100.0/ COUNT(*),2) AS pct_negros,
ROUND(SUM (CASE WHEN race='W' THEN 1 ELSE 0 END) * 100.0/ COUNT(*),2) AS pct_brancos
FROM shootings
GROUP BY state
ORDER BY pct_negros DESC
