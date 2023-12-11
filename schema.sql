
    CREATE TABLE IF NOT EXISTS nyc_zip_codes (
        id INTEGER PRIMARY KEY,
        zipcode INTEGER NOT NULL,
        population INTEGER,
        geometry geometry(Geometry, 4326)
    );

    CREATE TABLE IF NOT EXISTS treecensus_2015 (
        id INTEGER PRIMARY KEY,
        geometry geometry(Geometry, 4326),
        status VARCHAR,
        health VARCHAR,
        species VARCHAR,
        zipcode INTEGER,
        borough VARCHAR,
        latitude FLOAT,
        longitude FLOAT
    );

    CREATE TABLE IF NOT EXISTS zillow_average_rents(
        id INTEGER PRIMARY KEY,
        zipcode INTEGER,
        county VARCHAR,
        date DATE,
        value FLOAT
    );

    CREATE TABLE IF NOT EXISTS complaints311_2015 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2016 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );
    
    CREATE TABLE IF NOT EXISTS complaints311_2017 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2018 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2019 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2020 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2021 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2022 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );

    CREATE TABLE IF NOT EXISTS complaints311_2023 (
            id INTEGER PRIMARY KEY,
            created_date DATE,
            closed_date DATE,
            agency VARCHAR,
            complaint_type VARCHAR,
            descriptor VARCHAR,
            location_type VARCHAR,
            incident_zip INTEGER,
            latitude FLOAT,
            longitude FLOAT,
            borough VARCHAR,
            geometry geometry(Geometry, 4326)
        );


    