SELECT categories.category_name AS category, count(products.product_name) AS number_of_products
FROM categories
LEFT JOIN products ON categories.category_id = products.category_id
GROUP BY categories.category_name
ORDER BY number_of_products DESC;
