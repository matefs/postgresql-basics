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
RETURNS SETOF TEXT AS
$$
DECLARE
    retorno TEXT;
    emp_record employees%rowtype;
    emp_cursor CURSOR FOR SELECT * FROM employees;
BEGIN
    OPEN emp_cursor;
    
    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN NOT FOUND;  
        
        retorno := emp_record.employee_id || 'lask' || emp_record.first_name; 
        RETURN NEXT retorno;
    END LOOP;
    
    CLOSE emp_cursor;
    
    RETURN;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM teste();
