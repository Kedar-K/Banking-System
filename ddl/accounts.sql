CREATE TABLE IF NOT EXISTS accounts (
    account_id VARCHAR(255) PRIMARY KEY,
    branch_id VARCHAR(255) NOT NULL,
    account_type VARCHAR(255) NOT NULL,
    loan_id VARCHAR(255) NOT NULL,
    customer_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);