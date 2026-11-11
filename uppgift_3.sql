CREATE PROCEDURE price_increase()
LANGUAGE plpgsql
AS $$
BEGIN

    UPDATE products
	SET unit_price = unit_price * 1.05;

END;
$$;

SELECT unit_price
FROM products
ORDER BY product_id;

CALL price_increase()