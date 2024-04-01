-- models/clean_access_code.sql

-- Define a dbt model to clean the access code data
SELECT
    Identifier,
    "First name" AS first_name,
    "Last name" AS last_name
FROM
    {{ source('SFTP', 'access_code') }};
