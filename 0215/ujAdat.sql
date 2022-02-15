DELIMITER $$
CREATE PROCEDURE setData(IN name VARCHAR(50),
                         IN city VARCHAR(50),
                         IN salary DOUBLE)
    BEGIN
    INSERT INTO dolgozok( nev, telepules, fizetes ) VALUES 
                        ( name, city, salary);
    END $$
DELIMITER ;
/*
CALL setData("Aleska", "Budapest", 1000000);
*/