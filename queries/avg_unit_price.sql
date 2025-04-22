-- avg unit price per category
SELECT category, AVG(unit_price) AS avg_unit_price
FROM walmart
GROUP BY category;
