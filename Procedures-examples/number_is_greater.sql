CREATE FUNCTION number_is_greater(anyelement, anyelement) RETURNS boolean AS $$
    SELECT $1 > $2;
$$ LANGUAGE SQL;


select number_is_greater(1,2); -- false
select number_is_greater(2,1); -- true


