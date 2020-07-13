SELECT c.customerName AS 'Customer Name',CONCAT(e.lastName, e.firstName) AS 'Sales Rep'
FROM employees e JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
ORDER BY 'Customer Name';