-- Finds all the companies in the unit
-- Should be mapped to a route called '/companies'
SELECT
  c.id,
  c.descriptive_name,
  c.battalion_id,
  c.created_on
FROM companies as c
ORDER BY c.created_on
LIMIT 50