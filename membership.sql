SELECT s.customer_ID, order_date, product_name, price,
CASE
	WHEN order_date >= join_date THEN 'Y'
	ELSE 'N'
END AS Member
FROM menu m
JOIN sales s ON m.product_ID = s.product_ID
LEFT JOIN members me ON s.customer_ID = me.customer_ID;
