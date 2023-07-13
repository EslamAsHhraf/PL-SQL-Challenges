/*
Write a PL/SQL program to show the uses of a constrained subtype.
*/

SET SERVEROUTPUT ON

DECLARE
 subtype constrained_bi
 IS
 binary_integer range 1..10;
 l_cbi_var1 constrained_bi;
 BEGIN
 l_cbi_var1:=8;
  dbms_output.put_line('The value assigned is:'||to_char(l_cbi_var1));
 END;
/
