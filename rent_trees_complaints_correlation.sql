
    WITH HighRent AS (
    SELECT 
        zillow_rents.zipcode,
        zillow_rents.value AS rent,
        RANK() OVER (ORDER BY zillow_rents.value DESC) AS rent_rank
    FROM 
        zillow_rents
    WHERE 
        zillow_rents.date = '2023-01-31' AND zillow_rents.value != 'NaN'
    ORDER BY 
        zillow_rents.value DESC 
    LIMIT 5
    ),
    LowRent AS (
        SELECT 
            zillow_rents.zipcode,
            zillow_rents.value AS rent,
            RANK() OVER (ORDER BY zillow_rents.value) AS rent_rank
        FROM 
            zillow_rents
        WHERE 
            zillow_rents.date = '2023-01-31' AND zillow_rents.value != 'NaN'
        ORDER BY 
            zillow_rents.value
        LIMIT 5
    ),
    TreeCount AS (
        SELECT 
            tree_census_2015.zipcode,
            COUNT(*) AS tree_count
        FROM 
            tree_census_2015
        GROUP BY 
            tree_census_2015.zipcode
    ),
    ComplaintCount AS (
        SELECT 
            complaints311_2023.incident_zip AS zipcode,
            COUNT(*) AS complaint_count
        FROM 
            complaints311_2023
        WHERE 
            complaints311_2023.created_date BETWEEN '2023-01-01' AND '2023-01-31'
        GROUP BY 
            complaints311_2023.incident_zip
    )
    SELECT 
        combined_rents.zipcode,
        combined_rents.rent AS average_rent,
        COALESCE(TreeCount.tree_count, 0) AS tree_count,
        COALESCE(ComplaintCount.complaint_count, 0) AS complaint_count
    FROM 
        (SELECT * FROM HighRent UNION ALL SELECT * FROM LowRent) AS combined_rents
    LEFT JOIN 
        TreeCount ON combined_rents.zipcode = TreeCount.zipcode
    LEFT JOIN 
        ComplaintCount ON combined_rents.zipcode = ComplaintCount.zipcode
    ORDER BY 
        combined_rents.rent DESC;
    

