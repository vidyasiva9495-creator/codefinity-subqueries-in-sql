SELECT p.category, SUM(o.quantity) AS total_quantity
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
HAVING SUM(o.quantity) = 
    (SELECT MAX(total_quantity) 
    FROM 
    (SELECT p.category, SUM(o.quantity) AS total_quantity
    FROM products p
    JOIN orders o ON o.product_id = p.product_id
    GROUP BY p.category) 
    AS total);