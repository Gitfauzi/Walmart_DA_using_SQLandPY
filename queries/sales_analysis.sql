
-- What is the total revenue generated across all invoices?

SELECT SUM(unit_price*quantity) AS total_revenue FROM walmart;

-- Which branch has the highest total profit margin?
SELECT Branch, SUM(profit_margin) as total_profit_margin
FROM walmart
GROUP BY Branch
ORDER BY total_profit_margin DESC LIMIT 1;

--distict_payment_method
SELECT * FROM walmart_db.walmart 
groupby payment_method;

--Top 5 products by sales
SELECT category, SUM(quantity) AS total_quantity_sold
FROM walmart
GROUP BY category
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- What is the average unit price per product category?

SELECT category, AVG(unit_price) 
FROM walmart
GROUP BY category;

-- Which city has the most transactions?

SELECT city, COUNT(invoice_id) as total_invoices
FROM walmart
GROUP BY city
ORDER BY total_invoices DESC LIMIT 1;

-- Compare average profit margin per transaction by city.

SELECT city, AVG(profit_margin) avg_profit_margin 
FROM walmart
GROUP BY city
ORDER BY avg_profit_margin DESC;

-- What are the peak sales hours of the day?

SELECT HOUR(time) AS hour_of_day, SUM(unit_price * quantity) as sales
FROM walmart
GROUP BY hour_of_day
ORDER BY sales DESC;

-- How do sales vary by day of the week?

SELECT DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS weekday, SUM(quantity * unit_price) as daily_sales 
FROM walmart
GROUP BY weekday
ORDER BY daily_sales DESC;

-- Which payment method is used most frequently?

SELECT payment_method, COUNT(*) as total_payment
FROM walmart
GROUP BY payment_method
ORDER BY total_payment DESC LIMIT 1;

-- What is the average customer rating per branch?

SELECT branch, AVG(rating) as avg_rating
FROM walmart
GROUP BY branch;

-- What is the most sold product category by quantity?

SELECT category, SUM(quantity) total_quantity 
FROM walmart
GROUP BY category
ORDER BY total_quantity DESC LIMIT 1;