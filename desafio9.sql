SELECT
(
SELECT CONCAT(FirstName, ' ', LastName)
FROM w3schools.employees AS e
WHERE e.EmployeeID = o.EmployeeID
) AS `Nome completo`,
COUNT(OrderID) AS `Total de pedidos`
FROM w3schools.orders AS o
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
