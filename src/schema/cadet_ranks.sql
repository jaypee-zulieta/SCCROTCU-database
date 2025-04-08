-- Run ranks.sql, cadet_officers.sql and classes.sql 
-- before running this script
CREATE TABLE IF NOT EXISTS cadet_ranks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cadet_id INT NOT NULL,
  rank_id INT NOT NULL,
  class_id INT NOT NULL,
  given_on DATE,
  FOREIGN KEY(cadet_id) REFERENCES cadet_officers(enrolled_cadet_id),
  FOREIGN KEY(rank_id) REFERENCES ranks(id),
  FOREIGN KEY(class_id) REFERENCES classes(id)
);

ALTER TABLE cadet_ranks AUTO_INCREMENT = 1000;