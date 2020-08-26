SELECT
(
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) AS `Nome completo`,
(
SELECT JOB_TITLE
FROM hr.jobs AS j
WHERE j.JOB_ID = jh.JOB_ID
) AS Cargo,
START_DATE AS `Data de início do cargo`,
(
SELECT DEPARTMENT_NAME
FROM hr.departments AS d
WHERE d.DEPARTMENT_ID = jh.DEPARTMENT_ID
) AS Departamento
FROM hr.job_history AS jh
WHERE EMPLOYEE_ID <> 0 AND JOB_ID <> ' '
ORDER BY `Nome completo` DESC, Cargo ASC;
