SELECT customer_id, name, city
FROM customers c
WHERE (city='New York' OR city='Los Angeles') AND customer_id IN
    (
    SELECT o.customer_id
    FROM orders o
    WHERE c.customer_id = o.customer_id );
