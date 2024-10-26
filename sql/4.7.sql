SELECT category_name, rows_count, average_quantity
FROM (
    SELECT categories.name AS category_name, COUNT(*) AS rows_count, AVG(order_details.quantity) AS average_quantity
    FROM order_details
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    GROUP BY categories.name
    HAVING AVG(order_details.quantity) > 21
    ORDER BY rows_count DESC
) AS subquery
LIMIT 3 OFFSET 1;