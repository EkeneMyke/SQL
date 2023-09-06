SELECT m.product_ID, product_name, price, order_date, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID;

-- Which item was the most popular for each customer?


SELECT product_name, COUNT(product_name) AS Quantity, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
WHERE customer_ID = 'A'
GROUP BY product_name
ORDER BY Quantity DESC
LIMIT 1;


SELECT product_name, COUNT(product_name) AS Quantity, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
WHERE customer_ID = 'B'
GROUP BY product_name
UNION
SELECT product_name, COUNT(product_name) AS Quantity, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
WHERE customer_ID = 'C'
GROUP BY product_name;

