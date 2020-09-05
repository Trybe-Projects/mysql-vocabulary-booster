DELIMITER $$
DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.job_history AS jh
WHERE
(
SELECT EMAIL
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) = employee_email INTO total_jobs;
RETURN total_jobs;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR")
