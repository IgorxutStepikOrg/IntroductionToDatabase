SELECT
    good.name AS good_nam
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
WHERE
    category.name = "Cakes"

UNION

SELECT
    good.name AS good_nam
FROM
    good
LEFT OUTER JOIN
    sale_has_good
ON
    good.id = sale_has_good.good_id
LEFT OUTER JOIN
    sale
ON
    sale_has_good.sale_id = sale.id
LEFT OUTER JOIN
    status
ON
    sale.status_id = status.id
WHERE
    status.name = "delivering";
