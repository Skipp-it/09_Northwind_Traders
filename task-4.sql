select country, COUNT(customer_id) from customers
GROUP BY country
HAVING COUNT(customer_id) > 5
ORDER BY 2 DESC;
