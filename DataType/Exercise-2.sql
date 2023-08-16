DROP TABLE test;
CREATE TABLE test (col1 CHAR(5));
 
DECLARE
  var1 VARCHAR2(5 CHAR) := 'abc ';
BEGIN
  INSERT INTO test(col1) VALUES(var1);
END;
/
