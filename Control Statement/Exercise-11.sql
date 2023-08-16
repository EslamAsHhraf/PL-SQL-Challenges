set SERVEROUTPUT;
DECLARE
    grade char(1):='C';
BEGIN
    case upper(grade)
    when 'A' then
    DBMS_OUTPUT.PUT_LINE('Your Grade is: Outstanding');
    when 'B'
    then
    DBMS_OUTPUT.PUT_LINE('Your Grade is: Excellent');
    when 'C'
    then
    DBMS_OUTPUT.PUT_LINE('Your Grade is: Very Good');
    when 'D'
    then
    DBMS_OUTPUT.PUT_LINE('Your Grade is: Average');
    when 'F'
    then
    DBMS_OUTPUT.PUT_LINE('Your Grade is: poor');
    end case;
    EXCEPTION 
   WHEN others THEN 
      dbms_output.put_line('Invalid garde!'); 
END;
