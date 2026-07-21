-- Encontre as agências que têm total_shootings acima da média de todas as agências. 
-- Use uma subquery escalar.
SELECT id, name,state,total_shootings FROM agencies
WHERE total_shootings >(
SELECT avg(total_shootings) FROM agencies)
ORDER BY total_shootings DESC
