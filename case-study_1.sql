SELECT m.product_ID, product_name, price, order_date, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID;

-- What is the total amount each customer spent at the restaurant?

SELECT customer_ID, SUM(price) AS 'Total Amount'
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
GROUP BY customer_ID;
