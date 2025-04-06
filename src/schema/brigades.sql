CREATE TABLE IF NOT EXISTS brigades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  created_on DATE
);