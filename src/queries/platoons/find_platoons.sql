-- Finds all the platoons belonging in the unit
-- Should be mapped to a route called '/platoons'
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
ORDER BY p.created_on
LIMIT 50