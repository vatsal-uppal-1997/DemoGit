SET SERVEROUTPUT ON;
DECLARE
	i NUMBER(38,0) := 0;
	num NUMBER(38,0) := &num;
	fact NUMBER(38,0) := 1;
BEGIN
	for i IN REVERSE 1..num LOOP
		fact := fact*i;
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE('Factorial of '||num||' is '||fact);
END;