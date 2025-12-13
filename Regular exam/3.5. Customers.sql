SELECT 
	c.id,
	c.last_name,
	c.loyalty_card
FROM customers AS c
WHERE c.loyalty_card = TRUE
  AND c.last_name ILIKE '%m%'
ORDER BY c.last_name DESC, id ASC;