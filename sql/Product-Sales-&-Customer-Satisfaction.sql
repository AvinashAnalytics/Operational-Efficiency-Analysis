-- Product Sales & Customer Satisfaction:
-- Identify the product with the highest revenue generated in the HR department.

SELECT Product_Name, SUM(Revenue) AS Total_Revenue
FROM product_sales_data
WHERE Department = 'HR'
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 1;


-- What is the average customer feedback score for products in the Accessories category, and which product received the highest score?

SELECT 
    AVG(ps.Feedback_Score) AS Avg_Feedback_Score, 
    ps.Product_Name, 
    MAX(ps.Feedback_Score) AS Highest_Feedback_Score
FROM product_sales_data ps
WHERE ps.Category = 'Accessories'
GROUP BY ps.Product_Name
ORDER BY Highest_Feedback_Score DESC
LIMIT 1;



