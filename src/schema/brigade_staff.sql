-- RUn brigade_staff_designations.sql, brigades.sql
-- and cadet_officers.sql before running this script.
CREATE TABLE IF NOT EXISTS brigade_staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enrolled_cadet_id INT NOT NULL,
  brigade_id INT NOT NULL,
  designation_id INT NOT NULL,
  appointed_on DATE NOT NULL,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES cadet_officers(enrolled_cadet_id),
  FOREIGN KEY(brigade_id) REFERENCES brigades(id),
  FOREIGN KEY(designation_id) REFERENCES brigade_staff_designations(id)
);