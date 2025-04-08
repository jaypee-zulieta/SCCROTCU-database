-- Should be mapped to a route called
-- Shows all the brigades in the unit
-- /brigades/{brigade-id}/battalions
SELECT
  id, 
  descriptive_name,
  created_on
FROM battalions
WHERE brigade_id = 1000 -- you can change the brigade here
;

