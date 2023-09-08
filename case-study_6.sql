SELECT m.product_ID, product_name, price, order_date,
s.customer_ID, join_date
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
JOIN members me ON s.customer_ID = me.customer_ID;

-- Which item was purchased first by the customer after they became a member?

-- For Customer A
SELECT product_name, price, order_date,
s.customer_ID, join_date
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
JOIN members me ON s.customer_ID = me.customer_ID
WHERE s.customer_ID = 'A'
AND order_date > join_date
LIMIT 1;

-- For Customer B
SELECT product_name, price, order_date,
s.customer_ID, join_date
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
JOIN members me ON s.customer_ID = me.customer_ID
WHERE s.customer_ID = 'B'
AND order_date > join_date
LIMIT 1;
