
    SELECT 
    nyc_zip_codes.zipcode,
    COUNT(tree_census_2015.id) AS total_trees
    FROM 
        tree_census_2015
    JOIN 
        nyc_zip_codes 
    ON 
        ST_COntains(nyc_zip_codes.geometry, tree_census_2015.geometry)
    GROUP BY 
        nyc_zip_codes.zipcode
    ORDER BY 
        total_trees DESC
    LIMIT 10;

