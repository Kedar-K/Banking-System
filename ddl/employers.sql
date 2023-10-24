CREATE TABLE IF NOT EXISTS employers (
    employer_id VARCHAR(10) NOT NULL PRIMARY KEY,
    name CHAR(50) NOT NULL,
    employer_tier SET('Small', 'Medium', 'Large') NOT NULL,
    hq_address CHAR(50),
    num_of_employees INT
);