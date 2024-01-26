CREATE TABLE employees (
    employee_id INT PRIMARY KEY, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2) 
);
 

INSERT INTO employees (employee_id, first_name, last_name, hire_date, salary) VALUES
(1, 'John', 'Doe', '2022-01-01', 50000.00),
(2, 'Jane', 'Smith', '2022-02-15', 60000.00),
(3, 'Bob', 'Johnson', '2022-03-20', 55000.00) ;
 

CREATE OR REPLACE FUNCTION teste()
RETURNS SETOF employees AS
$$
DECLARE
    retorno employees;
    emp_id INT;
    emp_cursor CURSOR FOR SELECT employee_id FROM employees;
BEGIN
    OPEN emp_cursor;
    
    FOR emp_id IN (SELECT employee_id FROM employees)
    LOOP
        FETCH emp_cursor INTO emp_id;
        EXIT WHEN NOT FOUND;  
        
        SELECT * INTO retorno FROM employees WHERE employee_id = emp_id;
        RETURN NEXT retorno;
    END LOOP;
    
    CLOSE emp_cursor;
    
    RETURN;
END;
$$ LANGUAGE plpgsql;


select teste();

