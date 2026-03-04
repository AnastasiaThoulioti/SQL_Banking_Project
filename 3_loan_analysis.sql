SELECT 
    loan_type,
    loan_status,
    COUNT(*) as loan_accounts,
    SUM(
       CASE WHEN loan_status = 'Approved' THEN loan_amount
        ELSE 0
        END
    ) as approved_amount,
    SUM(loan_amount) as total_amount
FROM
    banking_data
GROUP BY
    loan_type,
    loan_status
ORDER BY
    loan_type DESC