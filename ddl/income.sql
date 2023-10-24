CREATE TABLE IF NOT EXISTS income (
    income_range_id INT NOT NULL PRIMARY KEY,
    income_range_min INT NOT NULL,
    income_range_max INT NOT NULL,
    income_range_type SET('High', 'Medium', 'Low') NOT NULL
);