-- Finds all the battalions in the unit
-- Should be mapped to a route called '/battalions'
-- battalions don't have to be part of a brigade.
SELECT 
  b.id, 
  b.descriptive_name, 
  b.brigade_id,
  b.created_on 
FROM battalions as b
ORDER BY b.created_on DESC
LIMIT 50;