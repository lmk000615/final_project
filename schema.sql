
        CREATE TABLE zip_codes (
            zip_code Integer PRIMARY KEY,
            neighborhood TEXT,
            borough TEXT,
            geometry GEOMETRY(Point, 4326)
        );

        CREATE TABLE complaints (
            complaint_id Integer PRIMARY KEY,
            created_date TIMESTAMP,
            complaint_type TEXT,
            descriptor TEXT,
            zip_code Integer REFERENCES zip_codes(zip_code),
            latitude FLOAT,
            longitude FLOAT,
            geometry GEOMETRY(Point, 4326)
        );

        CREATE TABLE trees (
            tree_id Integer PRIMARY KEY,
            species TEXT,
            diameter_inches FLOAT,
            health TEXT,
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
    