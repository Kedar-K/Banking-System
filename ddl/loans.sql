CREATE TABLE IF NOT EXISTS loans (
    loan_id VARCHAR(255) PRIMARY KEY,
    start_date DATE NOT NULL,
    tenure FLOAT NOT NULL,
    end_date DATE NOT NULL,
    amount FLOAT NOT NULL,
    interest_rate FLOAT NOT NULL,
    customer_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);