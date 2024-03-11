-- Create the employees table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

-- Insert sample data into the employees table
INSERT INTO employees (name, department) VALUES
('John Doe', 'HR'),
('Jane Smith', 'HR'),
('Alice Johnson', 'Finance'),
('Bob Brown', 'Finance'),
('Michael Davis', 'IT'),
('Sarah Lee', 'IT'),
('David Wilson', 'Marketing'),
('Emily Taylor', 'Marketing');


SELECT json_agg(
  json_build_object('name', name, 'department', department)
) AS employee_info
FROM employees;
