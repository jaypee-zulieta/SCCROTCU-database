-- Finds all the companies belonging to a specific battalion
-- Should be mapped to a route called 
-- 'battalions/{battalion-id}/companies/{company-d}'
SELECT
  c.id,
  c.descriptive_name,
  c.battalion_id,
  c.created_on
FROM companies as c
WHERE c.battalion_id = 1000 -- id of battalion
AND c.id = 1000 -- id of company
