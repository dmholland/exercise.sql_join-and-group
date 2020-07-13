SELECT p.productLine,COUNT(ore.orderNumber) AS '# SOLD'
FROM products p JOIN orderdetails ore
GROUP BY productLine
ORDER BY '# SOLD'