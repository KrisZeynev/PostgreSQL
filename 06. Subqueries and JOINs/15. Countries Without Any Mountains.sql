SELECT
    COUNT(*) AS countries_without_mountains
FROM countries AS c
LEFT JOIN
    mountains_countries AS mnt_cnt
        USING (country_code)
WHERE mnt_cnt.mountain_id IS NULL;