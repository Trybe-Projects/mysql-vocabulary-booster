SELECT
(
SELECT ContactName
FROM w3schools.customers AS c
WHERE c.CustomerID = o.CustomerID
) AS `Nome de contato`,
(
SELECT ShipperName
FROM w3schools.shippers AS s
WHERE s.ShipperID = o.ShipperID
) AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
WHERE ShipperID = 1 OR ShipperID = 2
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
