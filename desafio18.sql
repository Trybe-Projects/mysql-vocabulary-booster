DELIMITER $$
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_qty INT;
SELECT COUNT(HIRE_DATE)
FROM hr.employees AS e
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano INTO hired_qty;
RETURN hired_qty;
END $$
DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987)