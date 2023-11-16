-- This SQL provides the employer tier and the number of customers. 
-- It will help determining which employers have maximun or minimum number of employes with the bank. 
-- This way bank can partner with the companies to provide special offers if employes from the particular company onboards with the bank

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