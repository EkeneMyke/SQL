SELECT m.product_ID, product_name, price, order_date,
s.customer_ID, join_date
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
LEFT JOIN members me ON s.customer_ID = me.customer_ID;


-- In the first week after a customer joins the program (including their join date)
--  they earn 2x points on all items, not just sushi -
-- how many points do customer A and B have at the end of January

SELECT s.customer_ID, LEFT(join_date, 10) AS 'Join Date',
SUM(price*20) AS 'Total Points'
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
LEFT JOIN members me ON s.customer_ID = me.customer_ID
WHERE order_date LIKE '%01%'
AND join_date LIKE '%01%'
GROUP BY customer_ID
ORDER BY customer_ID;

