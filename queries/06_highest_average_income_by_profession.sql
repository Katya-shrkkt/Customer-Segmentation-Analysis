SELECT profession, ROUND(AVG("Annual Income ($)"), 2) AS avg_income
FROM customers
WHERE profession IS NOT NULL AND profession <> ''    -- ← Исключаем NULL и пустые строки
GROUP BY profession 
HAVING ROUND(AVG("Annual Income ($)"), 2) = (
    SELECT ROUND(MAX(avg_score), 2)
    FROM (
        SELECT AVG("Annual Income ($)") AS avg_score
        FROM customers
        WHERE profession IS NOT NULL AND profession <> ''  -- ← И здесь тоже
        GROUP BY profession
    ) AS sub
);