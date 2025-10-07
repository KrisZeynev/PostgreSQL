SELECT
    m.mountain_range AS mountain_range,
    p.peak_name AS peak_name,
    p.elevation AS elevation
FROM mountains as m
JOIN peaks as p
    ON m.id = p.mountain_id
WHERE m.mountain_range = 'Rila'
ORDER BY p.elevation DESC;