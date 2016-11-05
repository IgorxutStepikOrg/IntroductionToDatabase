SELECT
    category.name AS name,
    COUNT(sale.id) AS sale_num
FROM
    category
LEFT OUTER JOIN
    category_has_good
ON
    category.id = category_has_good.category_id
LEFT OUTER JOIN
    good
ON
    category_has_good.good_id = good.id
LEFT OUTER JOIN
    sale_has_good
ON
    good.id = sale_has_good.good_id
LEFT OUTER JOIN
    sale
ON
    sale_has_good.sale_id = sale.id
GROUP BY
    category.id;
