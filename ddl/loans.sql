CREATE TABLE IF NOT EXISTS loans (
    loan_id VARCHAR(10) NOT NULL PRIMARY KEY,
    start_date DATE NOT NULL,
    loan_type SET('Auto loan', 'Personal loan', 'Mortgage', 'Education') NOT NULL,
    tenure INT NOT NULL,
    end_date DATE NOT NULL,
    amount FLOAT NOT NULL,
    interest_rate FLOAT NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);