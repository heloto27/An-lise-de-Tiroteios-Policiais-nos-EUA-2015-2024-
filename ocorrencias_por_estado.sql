-- Quantas ocorrências houve por estado? Ordene do estado com mais ocorrências para o com menos.
SELECT 
    state,
    COUNT(*) AS total_ocorrencias
FROM shootings
GROUP BY state
ORDER BY total_ocorrencias DESC