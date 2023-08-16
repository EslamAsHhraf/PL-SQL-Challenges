SET SERVEROUTPUT ON;
DECLARE
    grd CHAR(1);
  BEGIN
    -- Accept value for grade
    grd := '&new_grd';
  CASE grd
    WHEN 'A' THEN dbms_output.Put_line('Your Grade is: Outstanding');
    WHEN 'B' THEN dbms_output.Put_line('Your Grade is: Excellent');
    WHEN 'C' THEN dbms_output.Put_line('Your Grade is: Very Good');
    WHEN 'D' THEN dbms_output. Put_line('Your Grade is: Average');
    WHEN 'F' THEN dbms_output.Put_line('Your Grade is: Poor');
    ELSE dbms_output.Put_line('No such grade in the list.');
  END CASE;	
  END;
