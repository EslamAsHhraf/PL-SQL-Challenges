
/*
6. Write a PL/SQL program to show the uses of SIMPLE_INTEGER datatype.
*/
set SERVEROUTPUT;


DECLARE
  num SIMPLE_INTEGER := 2147483645;
BEGIN
  FOR j IN 1..4 LOOP
    num := num + 1;
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(num, 'S9999999999'));
  END LOOP;
  FOR j IN 1..4 LOOP
   num := num - 1;
   DBMS_OUTPUT.PUT_LINE(TO_CHAR(num, 'S9999999999'));
  END LOOP;
END;
/
