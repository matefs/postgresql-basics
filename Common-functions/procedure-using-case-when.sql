CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(100),
    hire_date DATE,
    salary NUMERIC(10, 2)
);

-- Inserting sample data into the employees table
INSERT INTO employees (first_name, last_name, job_title, hire_date, salary) VALUES
('John', 'Doe', 'Software Engineer', '2022-01-01', 75000.00),
('Jane', 'Smith', 'Database Administrator', '2022-02-15', 80000.00),
('Bob', 'Johnson', 'Project Manager', '2022-03-10', 90000.00),
('Alice', 'Williams', 'UI/UX Designer', '2022-04-05', 70000.00),
('Charlie', 'Brown', 'System Analyst', '2022-05-20', 85000.00);


CREATE OR REPLACE FUNCTION teste()
RETURNS TABLE (employee_id integer, first_name varchar, last_name varchar, hire_date date, salary numeric)
LANGUAGE plpgsql
AS $$ 
DECLARE
  id integer := 0;
  filtro_especifico varchar(30) := '';
BEGIN
  IF id > 0 THEN 
    filtro_especifico := 'ORDER BY ' || codigo::varchar || ' DESC';
  END IF;

  -- Your other logic goes here

  RETURN QUERY select * from employees;

END $$;



select teste();