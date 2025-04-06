-- Run companies.sql before running this script.
CREATE TABLE IF NOT EXISTS platoons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  company_id INT,
  abbreviated_name VARCHAR(50) UNIQUE NOT NULL,
  descriptive_name VARCHAR(255) NOT NULL,
  created_on DATE,
  FOREIGN KEY(company_id) REFERENCES companies(id)
);