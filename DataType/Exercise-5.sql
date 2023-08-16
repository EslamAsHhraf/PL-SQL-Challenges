/*
Write a PL/SQL program to show the upper limit of PLS_INTEGER.
*/
DECLARE
  n1 PLS_INTEGER := 2147483647;
  n2 PLS_INTEGER := 1;
  s NUMBER;
BEGIN
  s := n1 + n2;
END;
/
