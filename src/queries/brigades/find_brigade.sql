-- Finds a specific brigade in the unit
-- Should be mapped to route called '/brigades/{brigade-id}'
SELECT
  b.id,
  b.descriptive_name,
  b.created_on
FROM brigades as b 
WHERE b.id = 1000 -- The specific id of the brigade
;