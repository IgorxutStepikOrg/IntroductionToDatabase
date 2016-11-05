SELECT DISTINCT
    table1.name AS source_name
FROM
    (
        SELECT
            source.name
        FROM
            source
        WHERE
            source.id NOT IN (
                SELECT DISTINCT
                    client.source_id
                FROM
                    client
            )

        UNION

        SELECT
            source.name
        FROM
            source
        LEFT OUTER JOIN
            client
        ON
            source.id = client.source_id
        WHERE
            client.id NOT IN (
                SELECT DISTINCT
                    sale.client_id
                FROM
                    sale
            )

        UNION

        SELECT
            source.name
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
        LEFT OUTER JOIN
            status
        ON
            sale.status_id = status.id
        WHERE
            status.name = "rejected"
        ) AS table1;
