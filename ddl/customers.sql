CREATE TABLE customers (
    customer_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(255) NOT NULL,
    maritial_status BOOLEAN NOT NULL,
    employer_id VARCHAR(255),
    income_range_id FLOAT NOT NULL,
    loan FLOAT NOT NULL,
    FOREIGN KEY (Employer_id) REFERENCES employer(Employer_id),
    FOREIGN KEY (Income_range_id) REFERENCES income_range(Income_range_id)
);