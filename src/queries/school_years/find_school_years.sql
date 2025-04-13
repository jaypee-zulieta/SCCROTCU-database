-- Find all school years
-- Should be mapped to a route called '/school-years'
SELECT 
  sy.id,
  sy.descriptive_name,
  sy.started_on,
  sy.ended_on
FROM school_years AS sy
LIMIT 50;