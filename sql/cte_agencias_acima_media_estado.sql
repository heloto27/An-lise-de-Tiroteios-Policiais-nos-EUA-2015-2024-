-- Quais agências têm mais mortes que a média do seu próprio estado?
WITH media_por_estado AS (
      SELECT
            state,
            AVG(total_shootings) AS media_de_shootings
      FROM agencies
      GROUP BY state
)

SELECT
      a.name,
      a.state,
      a.total_shootings,
      m.media_de_shootings
FROM agencies AS a
INNER JOIN media_por_estado AS m
      ON m.state = a.state
WHERE a.total_shootings > m.media_de_shootings
ORDER BY
      a.state,
      a.total_shootings DESC;
      
