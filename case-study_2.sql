SELECT * FROM dannys_diner.sales;

-- How many days has each customer visited the restaurant?
SELECT customer_ID, COUNT(order_date) AS 'Visit Days'
FROM dannys_diner.sales
GROUP BY customer_ID;
