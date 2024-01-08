-- Create a table to store film data
CREATE TABLE film (
    film_id INT,
    title VARCHAR(255),
    release_year INT,
    PRIMARY KEY (film_id)
);

-- Insert data into the film table
INSERT INTO film (film_id, title, release_year)
VALUES (1, 'Movie 1', 2022);

INSERT INTO film (film_id, title, release_year)
VALUES (2, 'Movie 2', 2023);

 
CREATE OR REPLACE FUNCTION showAll()
RETURNS TABLE ( -- Declare the columns to return
    film_id integer,
    title VARCHAR,
    release_year int
)
AS
$$
BEGIN
    RETURN QUERY SELECT * FROM film;
END;
$$
LANGUAGE plpgsql;


select * From showAll();

