CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(255) NOT NULL,
    maritial_status BOOLEAN NOT NULL,
    employer_id VARCHAR(255),
    income_range_id VARCHAR(255) NOT NULL,
    loan FLOAT NOT NULL,
    FOREIGN KEY (employer_id) REFERENCES employers(employer_id),
    FOREIGN KEY (income_range_id) REFERENCES income(income_range_id)
);