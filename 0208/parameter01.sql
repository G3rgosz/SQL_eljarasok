/*CREATE PROCEDURE(IN OUT INOUT)
CREATE PROCEDURE(IN p_name VARCHAR(50))*/

DELIMITER $$
CREATE PROCEDURE berki( IN b_id INT )
	BEGIN
		SELECT * FROM dolgozok WHERE az = b_id;
	END $$
DELIMITER ;

/* hívásnál:
SET @id = 10;
CALL berki(@id)
*/
DELIMITER $$
CREATE PROCEDURE esztergom ( IN varos VARCHAR(50))
	BEGIN
		SELECT * FROM dolgozok WHERE telepules = varos;
	END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE fizuk ( IN fizu DOUBLE)
	BEGIN
		SELECT * FROM dolgozok WHERE fizetes = fizu;
	END $$
DELIMITER ;
