CREATE OR REPLACE FUNCTION udf_classification_items_count(classification_name VARCHAR(30))
RETURNS VARCHAR AS
$$
DECLARE
    item_count INT;
BEGIN
    SELECT COUNT(*)
    FROM items AS i
    JOIN classifications c 
		ON i.classification_id = c.id
    WHERE c.name = classification_name
	INTO item_count;

    IF item_count >= 1 THEN
        RETURN CONCAT('Found ', item_count, ' items.');
    ELSE
        RETURN 'No items found.';
    END IF;
END;
$$
LANGUAGE plpgsql;