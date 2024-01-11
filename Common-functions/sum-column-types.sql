-- https://supabase.com/dashboard/project/
SELECT 
    SUM(CASE WHEN employee_type = 'Full-Time' THEN individual_counter ELSE 0 END) AS full_time_count
FROM 
    (select employee_type, count(*) as individual_counter from employees group by employee_type) as subquery;
