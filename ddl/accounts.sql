CREATE TABLE IF NOT EXISTS accounts (
    account_id VARCHAR(10) NOT NULL PRIMARY KEY,
    branch_id VARCHAR(10) NOT NULL,
    account_type SET('Current', 'Saving') NOT NULL,
    account_open_date DATE NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

);