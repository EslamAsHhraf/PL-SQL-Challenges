/*
Write a PL/SQL procedure to accepts a BOOLEAN parameter and uses a CASE statement to print Unknown if the value of the parameter is NULL, Yes if it is TRUE, and No if it is FALSE.
*/

set SERVEROUTPUT;

DECLARE
    PROCEDURE print_flag
        (flag  boolean )
    IS
    BEGIN
        -- PL/SQL code goes here
        -- Use variables, cursors, etc. here
        case 
        when flag is NULL 
        THEN
        DBMS_OUTPUT.PUT_LINE('Unknown ');
        when flag
        THEN
        DBMS_OUTPUT.PUT_LINE('YES');
        when not flag
        THEN
        DBMS_OUTPUT.PUT_LINE('NO');
        END CASE;
       
    END;
BEGIN
    print_flag(NULL);
    print_flag(true);
    print_flag(false);
  
END;


