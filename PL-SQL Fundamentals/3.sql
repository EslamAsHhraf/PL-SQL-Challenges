set SERVEROUTPUT;

DECLARE
  "SELECT" NUMBER := 10;
  "FROM" VARCHAR2(50) := 'employees';
BEGIN
  DBMS_OUTPUT.PUT_LINE('"SELECT" variable value: ' || "SELECT");
  DBMS_OUTPUT.PUT_LINE('"FROM" variable value: ' || "FROM");
END;


