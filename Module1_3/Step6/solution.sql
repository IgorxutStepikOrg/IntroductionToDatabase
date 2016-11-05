SELECT
	category,
    SUM(price * sold_num) AS cat_sum
FROM
	store
GROUP BY
	category
ORDER BY
	cat_sum DESC
LIMIT
	5;
