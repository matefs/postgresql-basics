
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales'); 
INSERT INTO EMPLOYEE VALUES (0002, 'Clark', 'Sales'); 
INSERT INTO EMPLOYEE VALUES (0003, 'Clark', 'Sales'); 


-- fetch 
select distinct name from EMPLOYEE

