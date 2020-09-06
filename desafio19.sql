DELIMITER $$
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailVar VARCHAR(100))
BEGIN
SELECT
(
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) AS `Nome completo`,
(
SELECT DEPARTMENT_NAME
FROM hr.departments AS d
WHERE d.DEPARTMENT_ID = jh.DEPARTMENT_ID
) AS Departamento,
(
SELECT JOB_TITLE
FROM hr.jobs AS j
WHERE j.JOB_ID = jh.JOB_ID
) AS Cargo
FROM hr.job_history AS jh
WHERE jh.EMPLOYEE_ID <> 0 AND
(
SELECT EMAIL
FROM hr.employees AS e
WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID
) = emailVar
ORDER BY Departamento ASC, Cargo ASC;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
