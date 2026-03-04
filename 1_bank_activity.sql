SELECT 
    AVG(account_balance) as avg_account_balance,
    SUM(account_balance) as total_account_balance,
    MAX(account_balance) as max_account_balance,
    MIN(account_balance) as min_account_balance
FROM banking_data