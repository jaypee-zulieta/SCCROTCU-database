-- Finds a specific platoon in the unit
-- Should be mapped to a route called '/platoons/{platoon-id}'
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