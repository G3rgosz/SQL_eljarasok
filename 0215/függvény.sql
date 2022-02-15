DELIMITER $$
CREATE FUNCTION nameUpper(user_name VARCHAR(50))
RETURNS VARCHAR(50) DETERMINISTIC    
    BEGIN
        RETURN UPPER(user_name);
    END $$
DELIMITER ;
/*
SET @p0='edgsdfgb'; SELECT `nameUpper`(@p0) AS `nameUpper`;
*/