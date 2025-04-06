-- Run cadet_officers.sql, battalions.sql and
-- battalion_staff_designations.sql before running
-- thi script.
CREATE TABLE IF NOT EXISTS battalion_staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enrolled_cadet_id INT NOT NULL,
  battalion_id INT NOT NULL,
  designation_id INT NOT NULL,
  appointed_on DATE NOT NULL,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES cadet_officers(enrolled_cadet_id),
  FOREIGN KEY(designation_id) REFERENCES battalion_staff_designations(id),
  FOREIGN KEY(battalion_id) REFERENCES battalions(id)
);

-- This code was added here because I, Jaypee P. Zulieta, forgot to
-- put an auto-incrementing primary key on the 
-- battalion_staff_designations table.
ALTER TABLE battalion_staff DROP CONSTRAINT battalion_staff_ibfk_2;
ALTER TABLE battalion_staff_designations DROP COLUMN id;
ALTER TABLE battalion_staff_designations ADD COLUMN
id INT AUTO_INCREMENT PRIMARY KEY;
-- @block
ALTER TABLE battalion_staff ADD CONSTRAINT battalion_staff_designations_fk
FOREIGN KEY(designation_id) REFERENCES battalion_staff_designations(id);