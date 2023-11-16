-- This SQL combines the multiple dimentions into one table which can then be used to feed to different algorithms 
-- for example, determining if the loan can be provided to the particular person, or in determining the credit score.
-- This example represents the star schema, where we have multiple dimensions and they are combined into a single fact entity.

SELECT
    c.customer_id,
    coalesce(l.loan_type, "no loan") loan,
    customer_name,
    address,
    age,
    gender,
    marital_status,
    e.name employer_name,
    i.income_range_type,
    count(transaction_id) number_of_transactions
FROM
    banking.customers c
    left join banking.employers e on e.employer_id = c.employer_id
    left join banking.income i on c.income_range_id = i.income_range_id
    left join banking.loans l on l.customer_id = c.customer_id
    left join banking.transactions t on t.customer_id = c.customer_id
group by
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9;