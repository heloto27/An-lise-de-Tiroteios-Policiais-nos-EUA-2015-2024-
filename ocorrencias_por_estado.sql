-- Quantas ocorrências houve por estado? Ordene do estado com mais ocorrências para o com menos.
SELECT count (*) AS total , state FROM shootings
GROUP BY state
ORDER BY state DESC