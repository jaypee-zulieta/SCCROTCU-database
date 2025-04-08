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


-- This code will create a join table for military_courses
-- and semesters called offered_courses. This will allow
-- the database to offer many courses per semester.
ALTER TABLE enrolled_cadets DROP CONSTRAINT military_course_foreign_key;
ALTER TABLE enrolled_cadets DROP COLUMN military_course_id;

--@block
ALTER TABLE military_courses DROP CONSTRAINT military_courses_ibfk_1;
ALTER TABLE military_courses DROP COLUMN semester_id;

CREATE TABLE offered_courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  semester_id INT NOT NULL,
  military_course_id INT NOT NULL,
  CONSTRAINT military_course_fk 
  FOREIGN KEY(military_course_id) REFERENCES military_courses(id),
  FOREIGN KEY(semester_id) REFERENCES semesters(id)
);

--@block
ALTER TABLE enrolled_cadets ADD COLUMN offered_course_id INT NOT NULL;
ALTER TABLE enrolled_cadets ADD CONSTRAINT FOREIGN KEY(offered_course_id)
REFERENCES offered_courses(id);

-- @block
ALTER TABLE enrolled_cadets AUTO_INCREMENT = 1000;