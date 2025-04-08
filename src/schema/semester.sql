-- Run school_years.sql first before running this script
CREATE TABLE IF NOT EXISTS semesters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  school_year_id INT NOT NULL,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  started_on DATE,
  ended_on DATE,
  FOREIGN KEY (school_year_id) REFERENCES school_years(id)
);

ALTER TABLE semesters AUTO_INCREMENT = 1000;