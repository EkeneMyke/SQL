SELECT m.product_ID, product_name, price, order_date, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID;

-- What was the first item from the menu purchased by each customer?

SELECT product_name, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
GROUP BY customer_ID;
