use project_supply_chain_data;

show tables;
select * from Supplier_Performance;
select * from supply_chain_data;

SELECT DISTINCT `Product type`
FROM supply_chain_data;




SELECT
AVG(Price) AS Avg_Price,
MIN(Price) AS Min_Price,
MAX(Price) AS Max_Price
FROM supply_chain_data;




-- Which category earns the most money?
SELECT
`Product type`,
SUM(`Revenue generated`) AS Total_Revenue
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Revenue DESC;



-- Which product category customers buy most?
SELECT
`Product type`,
SUM(`Number of products sold`) AS Total_Sales
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Sales DESC;



-- Which carrier is cheapest?
SELECT
`Shipping carriers`,
AVG(`Shipping costs`) AS Avg_Shipping_Cost
FROM supply_chain_data
GROUP BY `Shipping carriers`;



-- Best supplier based on quality.
SELECT *
FROM Supplier_Performance
ORDER BY Defect_Rate_Percent;



SELECT
s.SKU,
s.`Product type`,
s.`Supplier name`,
s.`Lead times`,
p.Supplier_Name,
p.Cost_per_Unit_INR,
p.Defect_Rate_Percent
FROM supply_chain_data s
INNER JOIN Supplier_Performance p
ON s.`Lead times` = p.Lead_Time_Days;



