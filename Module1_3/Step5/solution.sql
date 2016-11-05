SELECT
    category,
    COUNT(category)
FROM
    store
GROUP BY
    category;
