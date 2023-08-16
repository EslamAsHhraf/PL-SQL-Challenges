set SERVEROUTPUT;
create or replace FUNCTION is_even(val IN NUMBER)
  RETURN VARCHAR2
    IS
    BEGIN
        -- check if divise by 2 or no
        IF MOD(val, 2) = 0 THEN
            RETURN 'even';
        ELSE
            RETURN 'odd';
        END IF;
end ;
DECLARE
  val NUMBER := 3;
  num_result VARCHAR2(10);
BEGIN
  -- Check if even or not
  num_result := is_even(val);
  -- Display result
  DBMS_OUTPUT.PUT_LINE(val || ' is ' || num_result);
END;
