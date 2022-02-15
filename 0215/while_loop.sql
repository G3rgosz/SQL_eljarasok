DELIMITER $$
CREATE PROCEDURE while_loop()
    BEGIN
        DECLARE x INT DEFAULT 1;
        DECLARE sValue VARCHAR(20) DEFAULT "";
        WHILE x <= 5 DO
            SET sValue = CONCAT(sValue, x, ", ");
            SET x = x + 1;
        END WHILE; 
        SELECT sValue;
    END $$
DELIMITER ;
/*
CALL while_loop();
*/