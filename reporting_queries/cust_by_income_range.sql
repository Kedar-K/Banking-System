SELECT
    income_range_type,
    count(*)
FROM
    banking.income
group by
    1;