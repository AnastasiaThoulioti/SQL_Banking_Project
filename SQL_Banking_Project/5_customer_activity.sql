SELECT 
    customer_id,
    SUM(account_balance) as total_balance,
    COUNT(DISTINCT loan_type) as loans,
    COUNT(DISTINCT card_type) as cards,
    CASE WHEN SUM(account_balance) >= 5000 THEN 'High Value'
    ELSE 'Standard'
    END as customer_segment
FROM
    banking_data
GROUP BY
    customer_id
ORDER BY
    total_balance DESC