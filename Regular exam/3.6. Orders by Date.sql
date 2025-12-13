SELECT 
	o.id,
	to_char(o.created_at, 'DD-MM-YYYY') as created_at,
	o.customer_id
FROM orders AS o
WHERE created_at > '01-01-2025'
AND o.customer_id BETWEEN 15 AND 30
ORDER BY created_at ASC, o.customer_id DESC, o.id ASC
LIMIT 5;