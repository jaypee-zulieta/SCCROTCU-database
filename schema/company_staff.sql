-- Run company_staff_designations.sql, companies.sql
-- and cadet_officers.sql before running this script
CREATE TABLE IF NOT EXISTS company_staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enrolled_cadet_id INT NOT NULL,
  company_id INT NOT NULL,
  designation_id INT NOT NULL,
  appointed_on DATE NOT NULL,
  FOREIGN KEY(enrolled_cadet_id) REFERENCES cadet_officers(enrolled_cadet_id),
  FOREIGN KEY(company_id) REFERENCES companies(id),
  FOREIGN KEY(designation_id) REFERENCES company_staff_designations(id)
);