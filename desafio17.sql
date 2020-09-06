SELECT
(
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
FROM hr.employees AS e
WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID
) AS 'Nome completo',
DATE_FORMAT (START_DATE,'%d/%m/%Y') AS `Data de início`,
DATE_FORMAT (END_DATE,'%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
WHERE jh.EMPLOYEE_ID <> 0
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
