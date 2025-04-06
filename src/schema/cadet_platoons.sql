-- Run enrolled_cadets.sql and platoons.sql before running this script
CREATE TABLE IF NOT EXISTS cadet_platoons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enrolled_cadet_id INT NOT NULL,
  platoon_id INT NOT NULL,
  date_designated_on DATE NOT NULL,
  time_designated_on DATE NOT NULL,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES enrolled_cadets(id),
  FOREIGN KEY(platoon_id) REFERENCES platoons(id)
);