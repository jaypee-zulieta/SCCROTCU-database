-- Should be mapped to a route called
-- /battalions
-- Returns  all battalions that are not part of brigades
SELECT 
  id, 
  descriptive_name,
  created_on
FROM battalions
WHERE brigade_id = NULL;