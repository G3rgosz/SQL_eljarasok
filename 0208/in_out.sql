DELIMITER $$
CREATE PROCEDURE inAndOut( INOUT table_data VARCHAR(50) )
	BEGIN
		SELECT fizetes INTO table_data 
		FROM dolgozok WHERE nev = table_data;
	END $$
DELIMITER ;
/*
SET @table_value = "Berki Krisztián";
CALL inAndOut( @table_value );
SELECT @table_value as fizetes
*/
DELIMITER $$
CREATE PROCEDURE inIdOutName( INOUT id VARCHAR(50) )
	BEGIN
		SELECT nev INTO id 
		FROM dolgozok WHERE az = id;
	END $$
DELIMITER ;
