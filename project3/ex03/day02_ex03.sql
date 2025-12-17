WITH dates AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::date AS missing_date
)
SELECT 
    d.missing_date
FROM 
    dates d
LEFT JOIN 
    person_visits pv ON d.missing_date = pv.visit_date AND pv.person_id IN (1, 2)
WHERE 
    pv.visit_date IS NULL
ORDER BY 
    d.missing_date;