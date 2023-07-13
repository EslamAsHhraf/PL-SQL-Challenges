DECLARE
  some_condition  BOOLEAN;
  pi              NUMBER := 3.1415926; -- the value of pi is 3.1415926 : this is single line comment
  radius          NUMBER := 10;
  area            NUMBER;
BEGIN
 
  IF 2 + 2 = 4 THEN
    some_condition := TRUE;
  /* IF is the simple control flow statement  : this is multi line comment*/
  END IF;
 
  /* The line below in the statement computes the area of a circle.
  After the area is computed, the result is displayed. : : this is multi line comment*/
 
  area := pi * radius**2;
  DBMS_OUTPUT.PUT_LINE('The area of the circle is: ' || area);
END;
/
