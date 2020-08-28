SELECT
(
SELECT ProductName
FROM w3schools.products AS p
WHERE p.ProductID = od.ProductID
) AS Produto,
(
SELECT Price
FROM w3schools.products AS p
WHERE p.ProductID = od.ProductID
) AS Preço
FROM w3schools.order_details AS od
WHERE Quantity > 80
ORDER BY Produto ASC;
