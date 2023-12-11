
    WITH TopZipCodes AS (
    SELECT 
        zipcode,
        COUNT(*) AS total_trees
    FROM 
        tree_census_2015
    GROUP BY 
        zipcode
    ORDER BY 
        COUNT(*) DESC
    LIMIT 10
    )
    SELECT 
    TopZipCodes.zipcode,
    total_trees,
    ROUND(CAST(AVG(zillow_rents.value) AS numeric), 2) AS average_rent
    FROM 
        TopZipCodes
    JOIN 
        zillow_rents ON TopZipCodes.zipcode = zillow_rents.zipcode
    WHERE 
        zillow_rents.date = '2023-08-31'
    GROUP BY 
        TopZipCodes.zipcode, total_trees
    ORDER BY 
        total_trees DESC;

