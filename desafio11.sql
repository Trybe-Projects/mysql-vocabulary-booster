SELECT c.ContactName AS Nome,
c.Country AS País,
(
SELECT (COUNT(c2.Country))
FROM w3schools.customers AS c2
WHERE c2.Country = c.Country AND c.CustomerID <> c2.CustomerID
) AS `Número de compatriotas`
FROM w3schools.customers AS c
GROUP BY c.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY Nome ASC;
