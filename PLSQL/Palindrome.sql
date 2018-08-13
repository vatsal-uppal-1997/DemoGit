DECLARE
	num NUMBER(38,0) := &num;
	temp NUMBER(38,0) := num;
	newNum NUMBER(38,0) := 0;
	rem NUMBER(38,0);
BEGIN
	while num > 0 LOOP
		rem := MOD(num,10);
		newNum := (newNum*10) + rem;
		num := TRUNC(num/10);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(newNum);
	if newNum = temp then
		DBMS_OUTPUT.PUT_LINE(temp || ' is a palindrome !');
	ELSE
		DBMS_OUTPUT.PUT_LINE(temp || ' is not a palindrome !');
	END IF;
END;