CREATE TABLE transactions (
    transaction_id VARCHAR(255) PRIMARY KEY,
    customer_id VARCHAR(255) NOT NULL,
    type_id VARCHAR(255) NOT NULL,
    account_id VARCHAR(255) NOT NULL,
    transaction_timestamp TIMESTAMP NOT NULL,
    amount FLOAT NOT NULL,
    merchant VARCHAR(255),
    FOREIGN KEY (Customer_id) REFERENCES customer(Customer_id),
    FOREIGN KEY (Account_id) REFERENCES account(Account_id)
);