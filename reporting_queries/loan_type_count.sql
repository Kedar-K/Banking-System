
SELECT
    loan_type loan_type,
    count(*) loan_type_count
FROM
    banking.loans
group by
    1;