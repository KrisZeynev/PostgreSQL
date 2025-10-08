SELECT 
    c.country_name,
    r.river_name
FROM countries AS c
LEFT JOIN continents as cnt
ON c.continent_code = cnt.continent_code
LEFT JOIN countries_rivers AS cr
ON cr.country_code = c.country_code
LEFT JOIN rivers AS r
ON r.id = cr.river_id
WHERE cnt.continent_name = 'Africa'
ORDER BY c.country_name ASC
LIMIT 5;