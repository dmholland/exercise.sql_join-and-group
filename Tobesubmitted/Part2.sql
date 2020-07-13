SELECT p.productName,ore.quantityOrdered AS 'Total # Ordered',(ore.priceEach*ore.quantityOrdered) AS 'Total Sale'
FROM products p JOIN orderdetails ore ON p.productCode = ore.productCode
ORDER BY 'Total Sale' DESC;