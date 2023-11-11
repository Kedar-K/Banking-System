SELECT
    -- e.name
    e.employer_tier employer_tier,
    count(*) number_of_customers
FROM
    banking.customers c
    left join banking.employers e on c.employer_id = e.employer_id
group by
    1
order by
    2 desc;