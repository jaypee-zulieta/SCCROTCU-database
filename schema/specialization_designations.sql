-- Run platoons.sql and platoon_specializations.sql before
-- running this script
CREATE TABLE IF NOT EXISTS specialization_designations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  platoon_id INT NOT NULL,
  specialization_id INT NOT NULL,
  designated_on DATE NOT NULL,
  FOREIGN KEY(id) REFERENCES platoons(id),
  FOREIGN KEY(specialization_id) REFERENCES platoon_specializations(id)
);