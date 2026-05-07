SELECT
    o.customer_id,
    (SELECT name
       FROM customers
      WHERE customers.customer_id = o.customer_id
    ) AS name,
    COUNT(order_id) AS order_count
FROM orders o
GROUP BY
    o.customer_id
ORDER BY
    order_count DESC,
    o.customer_id ASC
LIMIT 3;