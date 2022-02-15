DELIMITER $$
CREATE PROCEDURE deleteData(IN id INT)
    BEGIN
        DELETE FROM dolgozok WHERE az = id;
    END $$
DELIMITER ;
/*
CALL deleteData(12);
*/