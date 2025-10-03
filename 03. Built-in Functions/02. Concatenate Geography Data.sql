CREATE VIEW view_continents_countries_currencies_details AS 
SELECT
    CONCAT(continents.continent_name, ': ', continents.continent_code) AS continent_details,
    CONCAT(countries.country_name, ' - ', countries.capital, ' - ', area_in_sq_km, ' - km2') AS country_information,
    CONCAT(currencies.description, ' (', currencies.currency_code, ')') AS currencies
FROM continents, countries, currencies
WHERE continents.continent_code = countries.continent_code
    AND countries.currency_code = currencies.currency_code
ORDER BY country_information, currencies ASC;