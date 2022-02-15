DELIMITER $$
CREATE PROCEDURE procedure_name()
	BEGIN
		SELECT * FROM table_name;
	END $$
DELIMITER ;

IF expression THEN 
	statements
ELSEIF expression THEN
	statements
ELSE
	statements
END IF
