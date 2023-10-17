CREATE TABLE IF NOT EXISTS transactions (
    transaction_id VARCHAR(255) PRIMARY KEY,
    customer_id VARCHAR(255) NOT NULL,
    type_id VARCHAR(255) NOT NULL,
    account_id VARCHAR(255) NOT NULL,
    transaction_timestamp TIMESTAMP NOT NULL,
    amount FLOAT NOT NULL,
    merchant VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);