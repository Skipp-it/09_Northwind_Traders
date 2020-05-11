SELECT products.product_name, sum(round(order_details.unit_price*order_details.quantity*(1-order_details.discount))) AS sum
FROM order_details
LEFT JOIN products
ON order_details.product_id = products.product_id
GROUP BY products.product_name
ORDER BY 2 ASC LIMIT 10;