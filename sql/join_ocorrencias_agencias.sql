-- Faça um JOIN entre shootings e agencies para mostrar o nome da agência responsável por cada ocorrência. 
-- Mostre shootings.name, date e agencies.name.
SELECT s.name, date, a.name FROM shootings AS s
JOIN agencies AS a ON s.agency_ids=a.id
LIMIT 10
