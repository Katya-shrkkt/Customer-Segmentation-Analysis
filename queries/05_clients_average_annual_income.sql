SELECT 
    ROUND(AVG(CASE WHEN gender = 'Male' THEN "Annual income ($)" END), 2) AS male_avg_income,
    ROUND(AVG(CASE WHEN gender = 'Female' THEN "Annual income ($)" END), 2) AS female_avg_income
FROM Customers;