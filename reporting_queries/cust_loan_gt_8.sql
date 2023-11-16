-- This SQL will tell about the customers with a loan type where the interest rate is greater than 8.

SELECT
    customer_name,
    loan_type loan_type,
    count(*) loan_type_count
FROM
    banking.loans b
    left join banking.customers c on b.customer_id = c.customer_id
where
    interest_rate > 8
group by
    1,
    2;