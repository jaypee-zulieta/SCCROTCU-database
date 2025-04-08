-- Run platoons.sql and cadet_officers.sql before
-- running this script
CREATE TABLE IF NOT EXISTS platoon_leaders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enrolled_cadet_id INT NOT NULL,
  platoon_id INT NOT NULL,
  appointed_on DATE NOT NULL,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES cadet_officers(enrolled_cadet_id),
  FOREIGN KEY(platoon_id) REFERENCES platoons(id)
);

ALTER TABLE platoon_leaders AUTO_INCREMENT = 1000;