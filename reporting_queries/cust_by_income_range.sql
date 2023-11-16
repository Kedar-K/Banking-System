-- This will help in understanding the number of customers by income range. Information can be used to target different income ranges.
-- This will be used as one of the metrics in the dashboard which will be monitored by the stakeholders.

SELECT
    income_range_type,
    count(*)
FROM
    banking.income
group by
    1;