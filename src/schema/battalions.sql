-- Run brigades.sql first before running this script
CREATE TABLE IF NOT EXISTS battalions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brigade_id INT,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  created_on DATE,
  FOREIGN KEY(brigade_id) REFERENCES brigades(id)
);

ALTER TABLE battalions AUTO_INCREMENT = 1000;