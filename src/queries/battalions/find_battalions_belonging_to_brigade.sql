-- Finds all the battalions belonging to a specific brigade
-- Should be mapped to a specific route called '/brigades/{brigade-id}/battalions'
SELECT 
  b.id,
  b.descriptive_name,
  b.brigade_id,
  b.created_on
FROM battalions AS b
WHERE b.brigade_id = 1000 -- id of the brigade
LIMIT 50