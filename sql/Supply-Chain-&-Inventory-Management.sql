-- supply Chain & Inventory Management:
-- Which supplier had the highest total inventory level across all departments?

SELECT Supplier_Name, SUM(Quantity_in_Stock) AS Total_Inventory
FROM inventory_data
GROUP BY Supplier_Name
ORDER BY Total_Inventory DESC
LIMIT 1;


-- Which product in the Gadgets category had the lowest inventory level?  

SELECT Product_Name, MIN(Quantity_in_Stock) AS Min_Inventory
FROM inventory_data
WHERE Category = 'Gadgets'
GROUP BY Product_Name
ORDER BY Min_Inventory ASC
LIMIT 1;


