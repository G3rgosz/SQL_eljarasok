DELIMITER $$
CREATE PROCEDURE variables()
	BEGIN
		DECLARE worker_id INT DEFAULT 0;
		SET worker_id = 3;
		SELECT * FROM dolgozok WHERE az = worker_id;
	END $$
DELIMITER ;

/* 
VARCHAR(50)
*/
DELIMITER $$
CREATE PROCEDURE pako()
	BEGIN
		DECLARE name VARCHAR(50) DEFAULT "";
		SET name = "Fekete Pákó";
		SELECT * FROM dolgozok WHERE nev = name;
	END $$
DELIMITER ;
