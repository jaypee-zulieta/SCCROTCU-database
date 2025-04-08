CREATE TABLE IF NOT EXISTS school_years (
  id INT AUTO_INCREMENT PRIMARY KEY,
  descriptive_name VARCHAR(255) UNIQUE NOT NULL,
  started_on DATE,
  ended_on DATE
);

ALTER TABLE school_years AUTO_INCREMENT = 1000;