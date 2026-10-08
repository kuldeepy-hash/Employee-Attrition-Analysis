CREATE DATABASE employee_attrition;
USE employee_attrition;
USE employee_attrition;

SELECT COUNT(*) AS total_employees
FROM employee_attrition;

SELECT *
FROM employee_attrition
LIMIT 5;

ALTER TABLE employee_attrition
CHANGE COLUMN `ï»¿Age` Age INT;

DESCRIBE employee_attrition;

SELECT
    Attrition,
    COUNT(*) AS employee_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employee_attrition), 2) AS percentage
FROM employee_attrition
GROUP BY Attrition;

SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employee_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;

SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employee_attrition
GROUP BY OverTime
ORDER BY attrition_rate DESC;

SELECT
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employee_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;

SELECT
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM employee_attrition
GROUP BY BusinessTravel
ORDER BY attrition_rate DESC;

SELECT
    Attrition,
    ROUND(AVG(Age), 2) AS avg_age,
    ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM employee_attrition
GROUP BY Attrition;