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