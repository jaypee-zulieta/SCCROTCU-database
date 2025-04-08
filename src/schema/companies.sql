-- Run battalions.sql before running this script
CREATE TABLE IF NOT EXISTS companies (
  id INT AUTO_INCREMENT PRIMARY KEY,
  battalion_id INT,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  created_on DATE,
  FOREIGN KEY(battalion_id) REFERENCES battalions(id)
);

ALTER TABLE companies AUTO_INCREMENT = 1000;