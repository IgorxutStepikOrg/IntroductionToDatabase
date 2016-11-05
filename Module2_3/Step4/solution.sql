SELECT
	good.name AS good_name,
	category.name AS category_name
FROM
	good
INNER JOIN
	category_has_good
ON
	good.id = category_has_good.good_id
INNER JOIN
	category
ON
	category_has_good.category_id = category.id
ORDER BY
	good_name,
	category_name;
