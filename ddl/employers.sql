CREATE TABLE IF NOT EXISTS employers (
    employer_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    employer_tier VARCHAR(255) NOT NULL,
    hq_address VARCHAR(255) NOT NULL,
    num_of_employees INT NOT NULL
);