CREATE TABLE IF NOT EXISTS branches (
     branch_id VARCHAR(10) NOT NULL PRIMARY KEY,
    name CHAR(50) NOT NULL,
    address CHAR(50) NOT NULL,
    swift_code CHAR(10) NOT NULL
);