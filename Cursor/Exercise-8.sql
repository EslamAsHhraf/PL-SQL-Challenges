set SERVEROUTPUT;
DECLARE
  employee_row emp%ROWTYPE;
BEGIN
  SELECT * INTO employee_row FROM Scott.emp WHERE empno = 149;
  DBMS_OUTPUT.PUT_LINE('EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL   | COMM  | DEPTNO');
  DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------');
  DBMS_OUTPUT.PUT_LINE(employee_row.empno || ' | ' || employee_row.ename || ' | ' || employee_row.job || ' | ' ||
                       employee_row.mgr || ' | ' || employee_row.hiredate || ' | ' || employee_row.sal || ' | ' ||
                       employee_row.comm || ' | ' || employee_row.deptno);
END;
