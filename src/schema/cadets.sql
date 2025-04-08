CREATE TABLE IF NOT EXISTS cadets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  edp_number VARCHAR(50) UNIQUE,
  last_name VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  middle_name VARCHAR(255),
  sex VARCHAR(50),
  date_of_birth DATE,
  CONSTRAINT sex_constraint
  CHECK (sex IN ("M", "F"))
);

ALTER TABLE cadets AUTO_INCREMENT = 1000;