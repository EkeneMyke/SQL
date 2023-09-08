SELECT m.product_ID, product_name, price, order_date, customer_ID
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID;

-- If each $1 spent equates to 10 points and sushi has a 2x points multiplier -
-- how many points would each customer have?

SELECT product_name, price, customer_ID,
CASE
	WHEN product_name = 'sushi'
	THEN (price*10)*2
	ELSE (price*10)
END AS Points,
SUM(CASE
	WHEN product_name = 'sushi'
	THEN (price*10)*2
	ELSE (price*10)
	END) AS 'Total Points'
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
GROUP BY customer_ID;
