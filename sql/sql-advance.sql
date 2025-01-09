-- Rank employees in each department by their revenue generated using a window function.


SELECT 
    e.Employee_Name,
    e.Department,
    SUM(ps.Revenue) AS Total_Revenue,
    RANK() OVER (PARTITION BY e.Department ORDER BY SUM(ps.Revenue) DESC) AS Ranks
FROM employee_data e
JOIN product_sales_data ps ON e.Employee_ID = ps.Employee_ID
GROUP BY e.Employee_Name, e.Department
ORDER BY e.Department, Ranks;




-- Create a CTE to find the average salary of employees in each department and then select departments where the average salary is above $70,000.*

WITH AvgSalary AS (
    SELECT Department, AVG(Salary) AS Avg_Salary
    FROM employee_data
    GROUP BY Department
)
SELECT * FROM AvgSalary
WHERE Avg_Salary > 70000;



--  Create a view that shows only the product name, revenue, and profit margin for products in the Accessories category.*

CREATE VIEW Accessories_Product_Revenue AS
SELECT ps.Product_Name, ps.Revenue, p.Profit_Margin
FROM product_sales_data ps
JOIN product_data p ON ps.Product_ID = p.Product_ID
WHERE p.Category = 'Accessories';
select * from product_sales_data;


