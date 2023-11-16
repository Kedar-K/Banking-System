-- Provided the info abou the customers where the loan end date is less than an year and advertise other loans to them

SELECT
    customer_name,
    DATEDIFF(end_date, current_date) days_to_end
FROM
    banking.loans b
    left join banking.customers c on b.customer_id = c.customer_id
where
    DATEDIFF(end_date, current_date) < 365
order by
    2;