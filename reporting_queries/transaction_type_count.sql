-- This provides the information about different transaction types, Shows which service is popular and which service can be improved.

SELECT
    type transaction_type,
    count(*) transaction_type_count
FROM
    banking.transactions t
    left join banking.transaction_type tt on t.type_id = tt.transaction_type_id
group by
    1;