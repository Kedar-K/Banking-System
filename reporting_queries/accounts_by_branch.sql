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