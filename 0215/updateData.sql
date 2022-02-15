DELIMITER $$
CREATE PROCEDURE updateData(IN id INT,
                         IN name VARCHAR(50),
                         IN city VARCHAR(50),
                         IN salary DOUBLE)
    BEGIN
        UPDATE dolgozok SET nev = name, telepules = city, fizetes = salary
        WHERE az = id;
    END $$
DELIMITER ;
/*
CALL updateData(12, "Aleska Diamond", "Bp", 100000);
*/