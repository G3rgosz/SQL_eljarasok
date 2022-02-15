DELIMITER $$
CREATE PROCEDURE more( OUT less INT, OUT aver DOUBLE, OUT top INT)
	BEGIN
		SELECT MIN( fizetes ) INTO less FROM dolgozok;
		SELECT AVG( fizetes ) INTO aver FROM dolgozok;
		SELECT MAX( fizetes ) into top FROM dolgozok;
	END $$
DELIMITER ;
/*
CALL more(@min, @atlag, @max);
SELECT @min as legkissebb, @atlag as atlag, @max as legnagyobb
*/
