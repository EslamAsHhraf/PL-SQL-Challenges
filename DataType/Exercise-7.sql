/*
Write a PL/SQL program to show the uses of an unconstrained subtype, i.e., the same set of values as its base type.


*/

SET SERVEROUTPUT ON
DECLARE
  SUBTYPE ac_bal IS NUMBER;

  chk_ac        ac_bal(6,2);
  sb_ac         ac_bal(8,2);
  depo_certificate  ac_bal(8,2);
  max_ins_amt  CONSTANT   ac_bal(8,2) := 300000.00;

  SUBTYPE ctr IS NATURAL;

  acno     ctr := 1;
  dep_amt     Ctr := 0;
  wth_amt  Ctr := 0;
  od_amt   Ctr := 0;

  PROCEDURE ac_deposit (
    acbal  IN OUT ac_bal,
    amt   IN     ac_bal
  ) IS
  BEGIN
    acbal  := acbal + amt;
    dep_amt := dep_amt + 1;
  END;
  
BEGIN
  NULL;
END;
/
