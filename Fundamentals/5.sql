set SERVEROUTPUT;

DECLARE
  "sELECT" NUMBER := 10;
BEGIN
  DBMS_OUTPUT.PUT_LINE('"SELECT" variable value: ' || "SELECT");
END;


