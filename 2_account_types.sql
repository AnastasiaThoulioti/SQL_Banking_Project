SELECT 
    account_type,
    AVG(account_balance) as avg_account_balance,
    SUM(account_balance) as total_account_balance,
    MAX(account_balance) as max_accoount_balance,
    MIN(account_balance) as min_account_balance,
    COUNT(*) as accounts
FROM 
    banking_data
GROUP BY
    account_type
ORDER BY
    account_type DESC