SELECT
    cast(transaction_timestamp as date),
    sum(credit),
    sum(debit)
FROM
    banking.transactions
group by
    1
order by
    1 desc;