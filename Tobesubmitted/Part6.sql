SELECT MONTH(o.orderDate) AS _Month,YEAR(o.orderDate) AS _Year, FORMAT(p.amount,2) AS Payments_Recieved
FROM orders o JOIN customers c ON c.customerNumber = o.customerNumber
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY _Year, _Month
ORDER BY _Year,_Month;

