SELECT *
FROM products p
WHERE p.product_id NOT IN (
    SELECT product_id
    FROM orders
);