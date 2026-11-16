# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) as unit
FROM products p
JOIN orders o ON o.product_id = p.product_id
WHERE monthname(order_date) = 'February' AND year(order_date) = '2020'
GROUP BY product_name
HAVING unit >= 100