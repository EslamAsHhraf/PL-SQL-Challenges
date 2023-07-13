set SERVEROUTPUT;

DECLARE
  "Welcome" varchar2(10) := 'welcome'; -- identifier without quotation
BEGIN
  DBMS_Output.Put_Line("welcome"); --reference to the identifier with quotation and different case
END;
/



