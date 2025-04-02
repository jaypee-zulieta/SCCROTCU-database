CREATE TABLE IF NOT EXISTS platoon_specializations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  specialization_name VARCHAR(255) NOT NULL UNIQUE,
  added_on DATE
);