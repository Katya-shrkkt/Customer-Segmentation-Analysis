SELECT profession, ROUND(AVG("Spending Score (1-100)"),2) AS avg_spending
FROM Customers
GROUP BY profession
ORDER BY avg_spending DESC
LIMIT 1;