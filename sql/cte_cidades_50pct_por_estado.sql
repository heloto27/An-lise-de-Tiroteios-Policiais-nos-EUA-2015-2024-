-- Quais cidades concentram mais de 50% das ocorrências do seu estado?
WITH ocorrências_por_cidade AS (
      SELECT
            city,
            state,
            COUNT(*) AS total_cidade
      FROM shootings
      GROUP BY 
            city, 
            state
),
ocorrências_por_estado AS (
      SELECT
            state,
            COUNT(*) AS total_estado
      FROM shootings
      GROUP BY state
)
SELECT
      c.city,
      c.state,
      c.total_cidade,
      e.total_estado,
      ROUND(c.total_cidade * 100.00 / e.total_estado, 2) AS pct_ocorrencias
FROM ocorrências_por_cidade AS c
INNER JOIN ocorrências_por_estado AS e
      ON e.state = c.state
WHERE c.total_cidade * 100.0 / e.total_estado > 50
ORDER BY
      c.state,
      pct_ocorrencias DESC;
