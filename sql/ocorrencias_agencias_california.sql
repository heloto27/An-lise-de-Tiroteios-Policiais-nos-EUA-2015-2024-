-- Liste as ocorrências cuja agency_ids pertence a agências do estado CA — usando uma subquery no WHERE.
SELECT 
    s.name,
    s.date, 
    s.city 
FROM shootings AS s
WHERE s.agency_ids IN (
    SELECT a.id 
    FROM agencies AS a
    WHERE a.state = 'CA'
)
ORDER BY s.date;
