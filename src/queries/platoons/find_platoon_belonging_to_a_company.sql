-- Find a specific platoon belonging to a specific company
-- Should be mapped to a route called 
-- '/companies/{company-id}/platoons/{platoon-id}'
SELECT 
  p.id,
  p.descriptive_name,
  ps.specialization_name AS specialization,
  p.company_id,
  p.created_on
FROM platoons AS p 
INNER JOIN specialization_designations AS sd
ON p.id = sd.platoon_id
INNER JOIN platoon_specializations AS ps 
ON ps.id = sd.specialization_id
WHERE p.id = 1000 -- id of the platoon
AND p.company_id = 1000 -- id of the company