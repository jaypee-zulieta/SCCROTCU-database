-- Run cadets.sql and military_courses.sql before running this script
CREATE TABLE IF NOT EXISTS enrolled_cadets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cadet_id INT NOT NULL,
  military_course_id INT NOT NULL,
  enrolled_on DATE,
  CONSTRAINT cadet_foreign_key
  FOREIGN KEY (cadet_id) REFERENCES cadets(id),
  CONSTRAINT military_course_foreign_key
  FOREIGN KEY (military_course_id) REFERENCES military_courses(id)
);