SELECT m.product_ID, product_name, price, order_date, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID;

-- What is the most purchased item on the menu and how many times
-- was it purchased by all customers?

SELECT product_name, price, COUNT(product_name) AS Quantity
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
GROUP BY product_name
ORDER BY Quantity DESC
LIMIT 1;
