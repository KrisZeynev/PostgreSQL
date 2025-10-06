SELECT
    COUNT(case WHEN department_id = 1 THEN 1 END) AS "Engineering",
    COUNT(case WHEN department_id = 2 THEN 1 END) AS "Tool Design",
    COUNT(case WHEN department_id = 3 THEN 1 END) AS "Sales",
    COUNT(case WHEN department_id = 4 THEN 1 END) AS "Marketing",
    COUNT(case WHEN department_id = 5 THEN 1 END) AS "Purchasing",
    COUNT(case WHEN department_id = 6 THEN 1 END) AS "Research and Development",
    COUNT(case WHEN department_id = 7 THEN 1 END) AS "Production"
FROM employees;