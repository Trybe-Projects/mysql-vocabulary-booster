DELIMITER $$
DROP PROCEDURE buscar_media_por_cargo;
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM hr.employees AS e
WHERE (
SELECT JOB_TITLE
FROM hr.jobs AS j
WHERE e.JOB_ID = j.JOB_ID
) = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
