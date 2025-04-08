-- Run semester.sql before running this script
CREATE TABLE IF NOT EXISTS formations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  semester_id INT NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  conducted_on DATE NOT NULL,
  started_on TIME,
  ended_on TIME,
  FOREIGN KEY (semester_id) REFERENCES semesters(id)
);

ALTER TABLE formations AUTO_INCREMENT = 1000;