DECLARE
  var_a INTEGER;  -- Scope of var_a is INTEGER beginning
  var_b REAL;    -- Scope of var_b is REAL 
BEGIN
  var_a:=5;
  var_b:=10.25;
  -- Visible: var_a (INTEGER), var_b (REAL)
  DBMS_OUTPUT.PUT_LINE('In the Outer Block');
  DBMS_OUTPUT.PUT_LINE('var_a = ' || var_a); -- var_a  is INTEGER
  DBMS_OUTPUT.PUT_LINE('var_b = ' || var_b); -- var_b is REAL


  -- Start First sub-block:
  DECLARE
    var_a CHAR;  -- Scope of var_a have changed into CHAR and beginning from here
    var_c REAL;       -- Scope of var_c is REAL
  BEGIN
    var_a:='C';
    var_c:=15.50;

    -- Visible: var_a (CHAR), var_b (REAL), var_c (REAL)
    DBMS_OUTPUT.PUT_LINE('In the First sub-Block');
    DBMS_OUTPUT.PUT_LINE('var_a = ' || var_a); -- var_a is CHAR
    DBMS_OUTPUT.PUT_LINE('var_b = ' || var_b); -- var_b is REAL
    DBMS_OUTPUT.PUT_LINE('var_c = ' || var_c); -- var_c is REAL
    NULL;
  END;          --  ending first sub-block

  -- Start Second sub-block:
  DECLARE
    var_d REAL;     -- Scope of var_d beginning from here with REAL
  BEGIN
    -- Visible: var_a here is CHAR and  var_b is REAL AND  var_d is REAL
    var_d:=20.75;
    DBMS_OUTPUT.PUT_LINE('In the Second sub-Block');
    DBMS_OUTPUT.PUT_LINE('var_a = ' || var_a); -- var_a is CHAR
    DBMS_OUTPUT.PUT_LINE('var_b = ' || var_b); -- var_b is REAL
    DBMS_OUTPUT.PUT_LINE('var_d = ' || var_d); -- var_d is REAL
    NULL;
  END;          -- ending second sub-block

-- Visible: var_a is INTEGER and var_b is REAL
-- This is also in the Outer Block
DBMS_OUTPUT.PUT_LINE('At the end in the  Outer-Block');
DBMS_OUTPUT.PUT_LINE('var_a = ' || var_a); -- var_a  is INTEGER
DBMS_OUTPUT.PUT_LINE('var_b = ' || var_b); -- var_b is REAL
END;            --   ending the outer block
/
