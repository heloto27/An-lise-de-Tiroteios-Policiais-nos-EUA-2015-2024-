-- Qual a evolução ano a ano de mortes com doença mental envolvida?
SELECT
      CAST(strftime('%Y', date) AS INTEGER) AS ano,
      COUNT(*) AS total_mortes
FROM shootings
WHERE was_mental_illness_related = 1
GROUP BY
      CAST(strftime('%Y', date) AS INTEGER)
ORDER BY ano;
