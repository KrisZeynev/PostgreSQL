CREATE OR REPLACE PROCEDURE udp_update_loyalty_status(min_orders INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE customers c
    SET loyalty_card = TRUE
    WHERE (
        SELECT COUNT(*)
        FROM orders o
        WHERE o.customer_id = c.id
    ) >= min_orders;
END;
$$;