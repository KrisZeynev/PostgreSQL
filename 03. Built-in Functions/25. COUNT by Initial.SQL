SELECT
	left(first_name, 2)
AS
	initials,
	count('initials') AS "user_count"
FROM
	users
GROUP BY initials
ORDER BY user_count desc, initials ASC;