DELIMITER $$
CREATE PROCEDURE in_out( IN d_id INT, OUT d_name VARCHAR(50))
	BEGIN
		SELECT nev INTO d_name FROM dolgozok WHERE az = d_id; 
	END $$
DELIMITER ;
/*
CALL in_out(9 , @name );
SELECT @name AS nev
*/
