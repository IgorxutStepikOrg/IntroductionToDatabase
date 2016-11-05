SELECT
    source.name AS source_name,
    SUM(sale.sale_sum) AS sale_sum
FROM
    source
LEFT OUTER JOIN
    client
ON
    source.id = client.source_id
LEFT OUTER JOIN
    sale
ON
    client.id = sale.client_id
GROUP BY
    source.id;
