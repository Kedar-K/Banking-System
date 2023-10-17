CREATE TABLE income (
    income_range_id VARCHAR(255) PRIMARY KEY,
    income_range_min FLOAT NOT NULL,
    income_range_max FLOAT NOT NULL,
    income_range_type VARCHAR(255) NOT NULL
);