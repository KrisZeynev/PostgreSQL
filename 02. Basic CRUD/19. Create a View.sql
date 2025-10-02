CREATE VIEW view_company_chart AS
SELECT
    company_chart.full_name,
    company_chart.job_title
FROM company_chart
WHERE manager_id = 184;