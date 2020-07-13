SELECT CONCAT(CONCAT(e.lastName," "),e.firstName) AS Sales_REP, 
        COUNT(ore.orderNumber) AS _Orders,
         (ored.quantityOrdered*ored.priceEach) AS Total_Sales 
FROM employees e 
 LEFT JOIN customers AS c ON e.employeeNumber = c.salesRepEmployeeNumber
 LEFT JOIN orders AS ore ON c.customerNumber = ore.customerNumber
 LEFT JOIN orderdetails AS ored ON ore.orderNumber = ored.orderNumber
 GROUP BY Sales_REP
 ORDER BY Total_Sales ASC;
