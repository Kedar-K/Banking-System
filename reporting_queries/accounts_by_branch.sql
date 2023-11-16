-- The SQL extracts the number of accounts in each branch of the bank. 
-- This will help to understand which bank branches are popular and based on the area charateristics a bank open a new branch in an area similar to good functioning branches.
-- This will be used as one of the metrics in the dashboard which will be monitored by the stakeholders.


SELECT
    name branch_name,
    count(*) num_of_accounts
FROM
    banking.accounts a
    left join banking.branches b on a.branch_id = b.branch_id
group by
    1
order by
    2 desc;