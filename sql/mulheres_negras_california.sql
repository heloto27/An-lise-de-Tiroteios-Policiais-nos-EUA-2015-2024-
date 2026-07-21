--- qual a porcemtagem de mulheres negras mortas na california
SELECT count(*) AS total,  round (count(*) * 100.0/ (SELECT count(*) FROM shootings ),2) AS percentual_de_mulheres
FROM shootings
WHERE gender='female' AND race= 'B' AND state='CA'
