SET SERVEROUTPUT ON;
DECLARE
	TYPE numbers IS VARRAY(10) OF NUMBER(38,0);
	find_sum numbers;
	i NUMBER(38,0);
	temp NUMBER(38,0) := 0;
BEGIN
	find_sum := numbers(1,2,3,4,5,6,7,8,9,10);
	for i in 1..find_sum.count LOOP
		temp := temp + find_sum(i);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(temp);
END;
