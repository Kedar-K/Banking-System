CREATE TABLE accounts (
    account_id VARCHAR(255) PRIMARY KEY,
    branch_id VARCHAR(255) NOT NULL,
    account_type VARCHAR(255) NOT NULL,
    loan_id VARCHAR(255) NOT NULL,
    customer_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (Loan_id) REFERENCES loan(Loan_id),
    FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id)
);