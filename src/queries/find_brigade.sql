-- Should be mapped to a route called
-- brigade/{brigade-id}
SELECT
  id,
  descriptive_name,
  created_on
FROM brigades
WHERE id = 1000 -- the id of the brigade you wish to find
;