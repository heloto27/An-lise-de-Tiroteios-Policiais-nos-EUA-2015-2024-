-- Liste as ocorrências cuja agency_ids pertence a agências do estado CA — usando uma subquery no WHERE.
SELECT name,date, city FROM shootings
WHERE agency_ids IN (
SELECT id from agencies
WHERE state='CA')
