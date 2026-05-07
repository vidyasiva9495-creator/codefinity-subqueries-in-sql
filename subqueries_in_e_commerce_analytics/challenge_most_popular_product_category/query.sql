SELECT p.category, SUM(o.quantity) as total_quantity
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.category
HAVING SUM(o.quantity) = (
  SELECT MAX(cat_total)
  FROM (
    SELECT
      SUM(o2.quantity) AS cat_total
    FROM products p2
    JOIN orders o2 ON o2.product_id = p2.product_id
    GROUP BY p2.category
  ) AS category_totals
);