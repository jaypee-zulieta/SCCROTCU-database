-- Run ./schema/battalion_staff_designations.sql
-- before running this script.
INSERT INTO battalion_staff_designations 
(abbreviated_name, descriptive_name) VALUES
("BATCOM", "Battalion Commander"),
("BATEXO", "Battalion Executive Officer"),
("S1", "Adjutant"),
("S2", "Intelligence"),
("S3", "Operations"),
("S4", "Logistics");