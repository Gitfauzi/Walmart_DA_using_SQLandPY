-- Top 5 products by sales
SELECT category, SUM(quantity) AS total_quantity_sold
FROM walmart
GROUP BY category
ORDER BY total_quantity_sold DESC
LIMIT 10;