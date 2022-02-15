DELIMITER $$
CREATE PROCEDURE aLoop()
    BEGIN
        DECLARE x INT DEFAULT 1;
        DECLARE sValue VARCHAR(50) DEFAULT "";
        lup:LOOP
            IF x > 5 THEN
                LEAVE lup;
            END IF;
            SET sValue = CONCAT(sValue, x, ", ");
            SET x = x + 1;
        END LOOP;
        SELECT sValue;
    END $$
DELIMITER ;
/*
CALL aLoop();
*/