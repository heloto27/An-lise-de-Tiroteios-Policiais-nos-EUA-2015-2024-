-- Faça um JOIN entre shootings e agencies para mostrar o nome da agência responsável por cada ocorrência. 
-- Mostre shootings.name, date e agencies.name.
SELECT 
    s.name AS nome_vitima, 
    s.date AS data_ocorrencia, 
    a.name AS nome_agencia
FROM shootings AS s
INNER JOIN agencies AS a 
    ON s.agency_ids = a.id
LIMIT 10;
