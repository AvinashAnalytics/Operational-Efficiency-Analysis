
-- . Employee Performance:
-- Question: Which department had the highest average profit margin among its products?
-- Relevant Table: product_df
-- Columns: Department, Profit_Margin


SELECT ps.Department, AVG(pd.Profit_Margin) AS Avg_Profit_Margin
FROM product_sales_data ps
 JOIN product_data pd ON ps.Product_Name = pd.Product_Name
GROUP BY ps.Department
ORDER BY Avg_Profit_Margin DESC
LIMIT 1;


-- 2. Which employee in the IT department had the highest performance score, and what was their role?
-- Relevant Tables: employee_df, employee_performance_df

  SELECT Employee_Name, Role, Performance_Score
FROM employee_data
WHERE Department = 'IT'
ORDER BY Performance_Score DESC
LIMIT 1;




