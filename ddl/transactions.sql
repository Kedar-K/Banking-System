CREATE TABLE IF NOT EXISTS transactions (
    transaction_id VARCHAR(10) NOT NULL PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    type_id CHAR NOT NULL,
    account_id VARCHAR(10) NOT NULL,
    transaction_timestamp TIMESTAMP NOT NULL,
    credit FLOAT,
    debit FLOAT,
    merchant VARCHAR(50) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (type_id) REFERENCES transaction_type(transaction_type_id),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);