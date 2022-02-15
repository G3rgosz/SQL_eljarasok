DELIMITER $$
CREATE PROCEDURE out_data(OUT out_id INT)
	BEGIN
		SELECT az INTO out_id FROM dolgozok WHERE nev = "Para Lajos";
	END $$
DELIMITER ;
/*
call out_data(@id);
select @id as azonosito
*/
DELIMITER <>
CREATE PROCEDURE negyesfizu(OUT negy_fizu INT)
	BEGIN
		SELECT fizetes INTO negy_fizu FROM dolgozok WHERE az = 4;
	END <>
DELIMITER ;

DELIMITER <>
CREATE PROCEDURE atlagfizu(OUT atlag INT)
	BEGIN
		SELECT AVG(fizetes) INTO atlag FROM dolgozok;
	END <>
DELIMITER ;

