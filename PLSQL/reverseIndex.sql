SET SERVEROUTPUT ON;
	CREATE TABLE normalIndex ( id VARCHAR2(100) );
	CREATE TABLE reverseIndex ( id VARCHAR2(100) );
DECLARE
	i NUMBER(38,0) := 0;
BEGIN
	for i in 1..1000 LOOP
		insert into normalIndex VALUES ( 'C'||i );
		insert into reverseIndex VALUES ( 'C'||i );
	END LOOP;
	CREATE INDEX nIndex ON normalIndex(id);
	CREATE INDEX rIndex ON reverseIndex(id);
END;