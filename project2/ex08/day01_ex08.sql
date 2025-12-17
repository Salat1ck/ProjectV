SELECT 
    order_date,
    name || ' (' || age || ')' AS person_information
FROM 
    person_order
NATURAL JOIN 
    (SELECT id AS person_id, name, age FROM person) AS p_renamed
ORDER BY 
    order_date ASC,
    person_information ASC;