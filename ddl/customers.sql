CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(10) NOT NULL PRIMARY KEY,
    customer_name CHAR(50) NOT NULL,
    address CHAR(50) NOT NULL,
    age INT NOT NULL,
    gender SET('M', 'F') NOT NULL,
    marital_status SET('Married', 'Single', 'Widowed','Unknown', 'Divorced') NOT NULL,
    employer_id VARCHAR(10),
    income_range_id VARCHAR(10),
    FOREIGN KEY (employer_id) REFERENCES employers(employer_id),
    FOREIGN KEY (income_range_id) REFERENCES income(income_range_id)
);