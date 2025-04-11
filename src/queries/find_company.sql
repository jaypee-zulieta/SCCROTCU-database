-- Finds a specific company within the unit
-- Should be mapped to a route called '/companies/{company-id}'
SELECT 
  c.id,
  c.descriptive_name,
  c.battalion_id,
  c.created_on
FROM 
companies AS c 
WHERE c.id = 1000 -- the id of the company
ORDER BY c.created_on LIMIT 50