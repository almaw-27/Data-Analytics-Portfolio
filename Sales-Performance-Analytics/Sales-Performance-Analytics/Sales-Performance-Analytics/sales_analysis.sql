SELECT SUM(Quantity * Unit_Price) AS Total_Sales
FROM sales_data;

SELECT Product,
       SUM(Quantity * Unit_Price) AS Revenue
FROM sales_data
GROUP BY Product
ORDER BY Revenue DESC;

SELECT Region,
       SUM(Quantity * Unit_Price) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;
