
    SELECT 
        zipcode,
        COUNT(*) AS total_trees
    FROM
        tree_census_2015
    GROUP BY
        zipcode
    ORDER BY
        total_trees DESC
    LIMIT 10;
