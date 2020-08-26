SELECT
(
SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME))
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) AS `Nome completo`,
START_DATE AS `Data de início`,
(
SELECT SALARY
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) AS Salário
FROM hr.job_history AS jh
WHERE (EMPLOYEE_ID <> 0 AND JOB_ID <> ' ') AND (MONTH(START_DATE) BETWEEN 1 AND 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
