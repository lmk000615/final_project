
    SELECT 
    id, 
    species, 
    health, 
    status, 
    ST_AsText(geometry) AS tree_location
FROM 
    tree_census_2015
WHERE 
    ST_DWithin(
        geometry::geography, 
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326)::geography, 
        804.672
    );


