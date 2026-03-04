SELECT 
    loan_type,
    SUM(loan_amount) as total_amount,
    COUNT(*) as loan_count,
    EXTRACT(MONTH FROM approval_rejection_date) as Month,
    EXTRACT(YEAR FROM approval_rejection_date) as Year
FROM
    banking_data
WHERE
    loan_status = 'Approved'
GROUP BY
    Month,
    Year,
    loan_type
ORDER BY
    Year DESC,
    Month DESC 
    