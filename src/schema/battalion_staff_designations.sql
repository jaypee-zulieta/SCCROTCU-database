CREATE TABLE IF NOT EXISTS battalion_staff_designations (
  id INT PRIMARY KEY,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL
);

ALTER TABLE battalion_staff_designations AUTO_INCREMENT = 1000;