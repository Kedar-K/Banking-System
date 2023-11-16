-- Provides the information about the count of different type of loans sold to the customers.
-- This will be used as one of the metrics in the dashboard which will be monitored by the stakeholders.

SELECT
    loan_type loan_type,
    count(*) loan_type_count
FROM
    banking.loans
group by
    1;