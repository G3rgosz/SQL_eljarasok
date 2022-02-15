DELIMITER $$
CREATE PROCEDURE do_while_loop()
    BEGIN
        DECLARE x INT DEFAULT 0;
        DECLARE sValue VARCHAR(20) DEFAULT "";
        REPEAT
            SET x = x + 1;
            SET sValue = CONCAT(sValue, x, ", ");
            UNTIL x = 5
        END REPEAT;
        SELECT sValue;
    END $$
DELIMITER ;

/*
CALL do_while_loop();