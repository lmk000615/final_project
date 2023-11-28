
            CREATE TABLE zip_codes (
                zip_code Integer PRIMARY KEY,
                neighborhood String,
                borough String,
                geometry GEOMETRY(Point, 4326)
            );

            CREATE TABLE complaints (
                complaint_id Integer PRIMARY KEY,
                created_date TIMESTAMP,
                complaint_type String,
                descriptor String,
                zip_code Integer REFERENCES zip_codes(zip_code),
                latitude FLOAT,
                longitude FLOAT,
                geometry GEOMETRY(Point, 4326)
            );

            CREATE TABLE trees (
                tree_id Integer PRIMARY KEY,
                species String,
                diameter_inches FLOAT,
                health String,
                zip_code Integer REFERENCES zip_codes(zip_code),
                latitude FLOAT,
                longitude FLOAT,
                geometry GEOMETRY(Point, 4326)
            );

            CREATE TABLE average_rents (
                zip_code Integer PRIMARY KEY,
                year INT,
                avg_rent DECIMAL
            );
        