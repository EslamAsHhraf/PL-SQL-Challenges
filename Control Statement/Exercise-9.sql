set SERVEROUTPUT;
DECLARE
  deptNum NUMBER := &depart_number; 
  emp_count NUMBER; 
  vacancies NUMBER; 
BEGIN
  SELECT COUNT(*) INTO emp_count FROM Scott.emp WHERE deptno = deptNum;
  vacancies := 6 - emp_count;
  DBMS_OUTPUT.PUT_LINE('Number of employees in department ' || deptNum || ': ' || emp_count);
  IF vacancies = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Department ' || deptNum||' doesnot have any vacancies  ');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Ddepartment  ' || deptNum || ' has : ' || vacancies ||' Number of vacancies in department');
  END IF;
END;
