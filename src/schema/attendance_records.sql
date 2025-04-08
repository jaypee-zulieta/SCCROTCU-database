-- Run cadets.sql and formations.sql before running this script.
CREATE TABLE IF NOT EXISTS attendance_records (
  id INT AUTO_INCREMENT PRIMARY KEY,
  formation_id INT NOT NULL,
  enrolled_cadets_id INT NOT NULL,
  attendance_status VARCHAR(50) NOT NULL,
  remarks TEXT,
  FOREIGN KEY(formation_id) REFERENCES formations(id),
  FOREIGN KEY(enrolled_cadets_id) REFERENCES cadets(id),
  CONSTRAINT attendance_status_check
  CHECK (attendance_status IN ("Present", "Absent", "Excused"))
);

ALTER TABLE attendance_records AUTO_INCREMENT = 1000;