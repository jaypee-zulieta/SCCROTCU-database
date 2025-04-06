SELECT 
  b.id AS id, 
  b.descriptive_name AS battalion_name,
  br.descriptive_name AS brigade,
  b.created_on AS created_on
FROM battalions AS b LEFT JOIN brigades AS br 
ON b.brigade_id = br.id;