-- Finds a specific battalion inside the unit
-- Should be mapped to a route called '/battalions/{battalion-id}'
SELECT
  b.id,
  b.descriptive_name,
  b.brigade_id,
  b.created_on
FROM battalions as b
WHERE b.id = 1000 -- the id of the battalion
;