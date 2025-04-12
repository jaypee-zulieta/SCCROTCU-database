-- Finds all the platoons belonging in the unit
-- Should be mapped to a route called '/platoons'
SELECT 
  p.id,
  p.descriptive_name,
  p.company_id,
  p.created_on
FROM platoons AS p
ORDER BY p.created_on
LIMIT 50