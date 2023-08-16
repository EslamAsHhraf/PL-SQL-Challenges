set SERVEROUTPUT;
CREATE OR REPLACE PACKAGE utils AS
    -- Function checs weekend
    FUNCTION is_even(val IN Number) RETURN VARCHAR2;
    -- Procedure checs weekend
    PROCEDURE check_weekend(val IN DATE);
END utils;
/
CREATE OR REPLACE PACKAGE BODY utils AS
FUNCTION is_even(val IN NUMBER)
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
PROCEDURE check_weekend(val DATE )
is
    day_check VARCHAR2(15);
BEGIN
    -- get day from date
    day_check := RTRIM(TO_CHAR(val, 'DAY'));
    -- chek if day is SATURDAY or SUNDAY
    IF day_check IN ('SATURDAY', 'SUNDAY') THEN
        DBMS_OUTPUT.PUT_LINE ('Input date '||val||' is '||day_check||' and falls on weekend');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Input date '||val||' is '||day_check||' and does not fall on the weekend');
END IF;
END;
end utils;
/
DECLARE
    date_temp DATE:= '18-JUL-2023';
    val NUMBER := 3;
    num_result VARCHAR2(10);
BEGIN
      -- Check if even or not
      num_result := utils.is_even(val);
      -- Display result
      DBMS_OUTPUT.PUT_LINE(val || ' is ' || num_result);
    
      -- convert it to date ttpe
      utils.check_weekend(date_temp);
END;
