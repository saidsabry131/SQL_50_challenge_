SELECT 
    LEFT(CONVERT(VARCHAR, tb.trans_date, 120), 7) AS month,
    tb.country,
    COUNT(tb.id) AS trans_count,
    (
        SELECT COUNT(*)
        FROM Transactions tc1
        WHERE tc1.state = 'approved'
        AND (tc1.country = tb.country OR (tc1.country IS NULL AND tb.country IS NULL))
        AND LEFT(CONVERT(VARCHAR, tc1.trans_date, 120), 7) = LEFT(CONVERT(VARCHAR, tb.trans_date, 120), 7)
    ) AS approved_count,
    SUM(tb.amount) AS trans_total_amount,
    (
        SELECT ISNULL(SUM(tc2.amount), 0)
        FROM Transactions tc2
        WHERE tc2.state = 'approved'
        AND (tc2.country = tb.country OR (tc2.country IS NULL AND tb.country IS NULL))
        AND LEFT(CONVERT(VARCHAR, tc2.trans_date, 120), 7) = LEFT(CONVERT(VARCHAR, tb.trans_date, 120), 7)
    ) AS approved_total_amount 
FROM Transactions tb
GROUP BY LEFT(CONVERT(VARCHAR, tb.trans_date, 120), 7), tb.country;