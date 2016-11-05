SELECT
    good.name AS good_name,
    category.name AS category_name
FROM
    good
LEFT OUTER JOIN
    category_has_good
ON
    good.id = category_has_good.good_id
LEFT OUTER JOIN
    category
ON
    category_has_good.category_id = category.id

UNION

SELECT
    good.name AS good_name,
    category.name AS category_name
FROM
    good
RIGHT OUTER JOIN
    category_has_good
ON
    good.id = category_has_good.good_id
RIGHT OUTER JOIN
    category
ON
    category_has_good.category_id = category.id;
