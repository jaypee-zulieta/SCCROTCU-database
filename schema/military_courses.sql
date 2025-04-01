-- Run semesters.sql first before running this script
CREATE TABLE IF NOT EXISTS military_courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  semester_id INT NOT NULL,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (semester_id) REFERENCES semesters(id)
);
