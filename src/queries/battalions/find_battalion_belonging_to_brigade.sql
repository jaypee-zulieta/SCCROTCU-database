-- Finds a specific battalion belonging to a specific brigade
-- Should be mapped to a route called '/brigades/{brigade-id}/battalions/{battalion-id}'
SELECT 
  b.id,
  b.descriptive_name,
  b.brigade_id,
  b.created_on
FROM battalions AS b
WHERE b.brigade_id = 1000 -- id of the brigade
AND b.id = 10000 -- id of the battalion