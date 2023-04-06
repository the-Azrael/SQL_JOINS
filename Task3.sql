SELECT
	o.product_name
FROM 
	orders AS o 
	LEFT JOIN customers AS c ON c.id = o.customer_id 
WHERE
	upper(c.name) = upper('alexey')