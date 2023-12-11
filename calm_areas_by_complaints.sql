
    SELECT 
        incident_zip AS zipcode,
        COUNT(*) AS number_of_complaints
     FROM
        (SELECT * FROM complaints311_2022 WHERE created_date >= '2022-10-01'
         UNION ALL
         SELECT * FROM complaints311_2023 WHERE created_date <= '2023-09-30') AS combined_data
    WHERE  
        created_date BETWEEN '2022-10-01' AND '2023-09-30'
    GROUP BY
        incident_zip
    ORDER BY
        number_of_complaints DESC
