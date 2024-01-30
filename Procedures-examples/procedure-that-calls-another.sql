-- Note: the result can only be seen in a posgresql console 

-- Create the EMPLOYEE table
CREATE TABLE EMPLOYEE (
  empId SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);
 
 


CREATE OR REPLACE FUNCTION insert_employee(
    emp_name TEXT,
    emp_dept TEXT
)
RETURNS text AS $$
DECLARE
    emp_id INTEGER;
BEGIN
    -- Inserting into EMPLOYEE table
    INSERT INTO EMPLOYEE(name, dept) VALUES (emp_name, emp_dept) RETURNING empId INTO emp_id;
    
    -- Calling the second function
    PERFORM process_employee(emp_id);
    
    -- Returning the employee ID
    RETURN emp_dept;
END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION process_employee(
    employee_id INTEGER
)
RETURNS VOID AS $$
BEGIN
    -- Your processing logic goes here
    -- For example, you can print a message or perform additional operations
    
    RAISE NOTICE 'Employee with ID % processed.', employee_id;
    
    -- You can add more processing logic here
    
END;
$$ LANGUAGE plpgsql;




select insert_employee('empregado','RH');
select insert_employee('empregado2','DEV');
