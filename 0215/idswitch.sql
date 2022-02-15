DELIMITER $$
CREATE PROCEDURE idSalaryLevel( IN u_id INT, OUT slevel VARCHAR(10))
	BEGIN
        DECLARE average_sal INT DEFAULT 0;
        DECLARE usalary INT DEFAULT 0;
        SELECT AVG(fizetes) INTO average_sal FROM dolgozok;
	    SELECT fizetes INTO usalary FROM dolgozok WHERE az = u_id;
        CASE 
            WHEN usalary < average_sal THEN 
                SET slevel = "alacsony";
            WHEN usalary >= average_sal AND usalary < average_sal THEN 
                SET slevel = "átlagos";
            WHEN usalary >= average_sal THEN 
                SET slevel = "magas";
            ELSE
                SET slevel = "Ismeretlen";
        END CASE;
	END $$
DELIMITER ;
/*
SET @id = 10;
CALL idSalaryLevel(@id,@slevel);
SELECT @slevel as fizetésSzint;
*/