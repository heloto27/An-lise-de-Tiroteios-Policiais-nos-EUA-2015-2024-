--- qual a porcentagem de mulheres negras mortas na california
SELECT 
    COUNT(*) AS total_mulheres_negras, 
    ROUND(
        COUNT(*) * 100.0 / 
        (
            SELECT COUNT(*) 
            FROM shootings 
            WHERE state = 'CA'
        ),
        2
    ) AS percentual_na_california
FROM shootings
WHERE gender = 'female' 
    AND race= 'B' 
    AND state='CA'
