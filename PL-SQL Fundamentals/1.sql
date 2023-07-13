set SERVEROUTPUT;

DECLARE
    incentive NUMBER(8,2);
BEGIN
    select SALARY * 0.12 into incentive
    from employees2
    where EMPLOYEE_ID=110;
    DBMS_OUTPUT.PUT_LINE('Incentive  = ' || TO_CHAR(incentive));
END;
/



