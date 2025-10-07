SELECT
    COUNT(*) as countries_without_rivers
FROM countries as c
LEFT JOIN countries_rivers as cr
    ON c.country_code = cr.country_code
WHERE cr.country_code IS NULL;