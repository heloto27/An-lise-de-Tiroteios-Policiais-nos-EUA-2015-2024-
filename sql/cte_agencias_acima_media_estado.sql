-- Quais agências têm mais mortes que a média do seu próprio estado?
WITH agencias_com_mais_mortes AS (
      SELECT name,state,total_shootings FROM agencies 
),

media_de_morte AS (
      SELECT state,
            avg (total_shootings) AS media_de_mortes FROM agencies 
     GROUP BY STATE
)

SELECT t1.name,t1.state,t1.total_shootings,t2.media_de_mortes FROM agencias_com_mais_mortes AS t1
LEFT JOIN media_de_morte AS t2 
ON t2.state = t1.state
WHERE t1.total_shootings>t2.media_de_mortes
ORDER BY t1.state
