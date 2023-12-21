-- Create table
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- Insert data
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- Fetch data using cursor
-- Start a transaction block
BEGIN;

-- Declare a cursor
DECLARE my_cursor CURSOR FOR SELECT name, dept FROM EMPLOYEE WHERE name IS NOT NULL;

-- Fetch and process the data
FETCH FROM my_cursor;
-- You can add additional processing logic here

-- Close the cursor
CLOSE my_cursor;

-- Commit the transaction
COMMIT;

