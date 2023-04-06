SELECT
	o.product_name,
	count(o.amount) as amount_cnt
FROM 
	orders AS o 
	LEFT JOIN customers AS c ON c.id = o.customer_id 
WHERE
	upper(c.name) = upper('alexey')
GROUP BY
	o.product_name
	