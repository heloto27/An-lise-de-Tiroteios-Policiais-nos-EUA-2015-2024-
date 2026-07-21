-- Para cada estado, mostre o estado, total de ocorrências e o percentual que representa do total geral. 
-- Use subquery no SELECT.
SELECT state, count(*) AS total, round(count(*) *100/ (SELECT count(*) FROM shootings),2) AS percentual
FROM shootings 
GROUP BY state
ORDER BY total DESC;
