DECLARE
	str VARCHAR2(20) := '&STR';
	revstr VARCHAR2(20);
	i NUMBER(38,0) := 0;
BEGIN
	FOR i IN REVERSE 1..LENGTH(str) LOOP
		revstr := revstr || SUBSTR(str,i,1);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(revstr);
END;