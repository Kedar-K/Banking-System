SELECT
    customer_name,
    DATEDIFF(end_date, current_date) days_to_end
FROM
    banking.loans b
    left join banking.customers c on b.customer_id = c.customer_id
where
    DATEDIFF(end_date, current_date) > 365
order by
    2;