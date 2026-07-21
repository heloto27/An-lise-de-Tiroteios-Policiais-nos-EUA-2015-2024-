-- Qual a evolução ano a ano de mortes com doença mental envolvida?
WITH mortes_mentais AS (
      SELECT strftime('%Y', date) AS ano,
      count(*) AS total
      FROM shootings
      WHERE was_mental_illness_related = 1
      GROUP BY ano 
)
SELECT * FROM mortes_mentais
ORDER BY ano 

