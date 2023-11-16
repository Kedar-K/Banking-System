-- This query provides the average transactions amounts for credits and debits for each day. 
-- When calculated daily and stored in a table, this data can be used for doing timeseries analysis and 
-- opens a door to unserstanding the factors which might have cause high or low transactions in credits and debits. 
-- For example, decline in transactions can be because of unanticipated failure which could have been avoided.
-- This will be used as one of the metrics in the dashboard which will be monitored by the stakeholders.

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