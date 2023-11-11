SELECT
    cast(transaction_timestamp as date),
    avg(credit),
    avg(debit)
FROM
    banking.transactions
group by
    1
order by
    1 desc;