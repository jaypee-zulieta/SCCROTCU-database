-- Run ./schema/brigade_staff_designations.sql
-- before running this script.
INSERT INTO brigade_staff_designations (abbreviated_name, descriptive_name) VALUES
("BRIGCOM", "Brigade commander"),
("BRIGEXO", "Brigade Executive Officer"),
("S1", "Adjutant"),
("S2", "Intelligence"),
("S3", "Operations"),
("S4", "Logistics");