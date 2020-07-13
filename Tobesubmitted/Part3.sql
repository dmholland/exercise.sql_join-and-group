SELECT ore.status, count(ory.orderNumber)
FROM orders AS ore JOIN orders AS ory ON ore.orderNumber = ory.ordernumber
GROUP BY ore.status
ORDER BY ore.status;