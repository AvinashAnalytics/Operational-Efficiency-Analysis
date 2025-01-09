-- =====================Employee Training & Sales:================================
-- How many employees in the Sales department have completed training programs, and
-- what percentage does this represent of the total employees in that department?


-- Calculate the percentage of Sales employees who completed training:
  SELECT 
    COUNT(e.Employee_ID) AS Employees_Completed_Training, 
    (COUNT(e.Employee_ID) * 100 / (SELECT COUNT(*) FROM employee_data WHERE Department = 'Sales')) AS Percentage_Completed_Training
FROM employee_data e
JOIN training_data t ON e.Employee_ID = t.Employee_ID
WHERE e.Department = 'Sales' AND t.Completion_Status = TRUE;



--  What is the total number of units sold for all products in the Marketing department, and which product contributed 
-- the most to this total?

SELECT 
    SUM(ps.Units_Sold) AS Total_Units_Sold,
    ps.Product_Name
FROM product_sales_data ps
WHERE ps.Department = 'Marketing'
GROUP BY ps.Product_Name
ORDER BY Total_Units_Sold DESC
LIMIT 1;


