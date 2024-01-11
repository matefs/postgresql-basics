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

