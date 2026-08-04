SELECT "Family Size", ROUND(AVG("Spending Score (1-100)" ),2) as average_Spending_Score_ofFamily
FROM Customers 
GROUP BY "Family Size";