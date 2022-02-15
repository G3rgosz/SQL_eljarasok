DELIMITER $$
CREATE PROCEDURE getSalaryLevel(OUT slevel VARCHAR(10), OUT average_sal INT)
    BEGIN
        SELECT AVG(fizetes) INTO average_sal FROM dolgozok LIMIT 10;
        CASE
            WHEN average_sal < 2800000 THEN
                SET slevel = "alacsony";
            WHEN average_sal >= 2800000 AND average_sal < 5000000 THEN
                SET slevel = "átlagos";
            WHEN average_sal >= 5000000 THEN 
                SET slevel = "magas";
            ELSE
                SET slevel = "Ismeretlen";
        END CASE;
    END $$
DELIMITER ;
/* 

CALL getSalaryLevel(@level,@avg);
SELECT @level as szint, @avg as atlag;
*/