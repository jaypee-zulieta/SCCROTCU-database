-- Finds all the brigades in the unit
-- Should be mapped to a route called '/brigades'
SELECT 
  b.id, 
  b.descriptive_name,
  b.created_on
FROM brigades as b
ORDER BY created_on DESC
LIMIT 50;