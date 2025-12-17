(
    SELECT pz.name
    FROM pizzeria pz
    JOIN menu m ON pz.id = m.pizzeria_id
    JOIN person_order po ON m.id = po.menu_id
    JOIN person p ON po.person_id = p.id
    WHERE p.gender = 'female'
    EXCEPT
    SELECT pz.name
    FROM pizzeria pz
    JOIN menu m ON pz.id = m.pizzeria_id
    JOIN person_order po ON m.id = po.menu_id
    JOIN person p ON po.person_id = p.id
    WHERE p.gender = 'male'
)
UNION
(
    SELECT pz.name
    FROM pizzeria pz
    JOIN menu m ON pz.id = m.pizzeria_id
    JOIN person_order po ON m.id = po.menu_id
    JOIN person p ON po.person_id = p.id
    WHERE p.gender = 'male'
    EXCEPT
    SELECT pz.name
    FROM pizzeria pz
    JOIN menu m ON pz.id = m.pizzeria_id
    JOIN person_order po ON m.id = po.menu_id
    JOIN person p ON po.person_id = p.id
    WHERE p.gender = 'female'
)
ORDER BY name;