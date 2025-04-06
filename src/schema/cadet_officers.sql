-- Run enrolled_cadets.sql before running this script
CREATE TABLE IF NOT EXISTS cadet_officers (
  enrolled_cadet_id INT PRIMARY KEY,
  appointed_on DATE,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES enrolled_cadets(id)
);