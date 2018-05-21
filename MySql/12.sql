DELIMITER //
CREATE PROCEDURE copy_data()
BEGIN
    DECLARE carbrand varchar(30);
    DECLARE ownername varchar(40);
    DECLARE ownersurname varchar(30);

    DECLARE finish integer default 0;
    -- оголошуємо курсор на основі деякого оператора SELECT
    DECLARE my_cursor CURSOR
        FOR SELECT
            car_brand,
            person_surname,
            person_name
        FROM 
            car cr JOIN custom cm JOIN owner ow JOIN person ps
        ON
            cr.car_id = cm.id_car AND ow.owner_id = cm.id_owner AND ps.person_id = ow.owner_id;
    -- оголошуємо оброблювач стану NOT FOUND 
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

    OPEN my_cursor;          -- відкриваємо курсор
    DELETE FROM data_car_owner;
    WHILE finish = 0 DO 
        FETCH 
            my_cursor 
        INTO 
            carbrand, ownername, ownersurname; -- читаємо наступний рядок
        INSERt into 
            data_car_owner
        values 
            (carbrand, ownername, ownersurname);
    END WHILE;
    CLOSE my_cursor;  -- закриваємо курсор
END
//

call copy_data();


-- 2-----------------------------------------------------------------------------------
drop procedure work_time;
delimiter //
CREATE PROCEDURE work_time (IN a INT, IN b INT)
BEGIN
SELECT 
    name,
    surname,
    date_birthday,
    name_role,
    YEAR(NOW()) - YEAR(start_work) AS 'Досвід роботи'
FROM
   worker INNER JOIN
    role ON worker.id_worker=role.worker_id_worker
WHERE
    (YEAR(NOW()) - YEAR(start_work)) BETWEEN a AND b
ORDER BY start_work;
END
//
CALL work_time(1,5);

-- 3 ------------------------------------------------------------------------
drop table binfo;
CREATE TABLE binfo(
i_ID int NOT NULL AUTO_INCREMENT,
i_name varchar(45) NOT NULL,
i_surname varchar(45) NOT NULL,
i_sex varchar(20) NOT NULL, 
i_address varchar(45) NOT NULL,
i_phone varchar(20),
i_bdate varchar(45),
PRIMARY KEY (i_ID));

drop procedure info;
DELIMITER //
CREATE PROCEDURE info()
BEGIN 
DECLARE id int;
DECLARE _end int DEFAULT 0;
DECLARE bname varchar(45);
DECLARE bsurname varchar(45);
DECLARE bsex varchar(20);
DECLARE baddress varchar(45);
DECLARE bphone varchar(20);
DECLARE bbdate varchar(45);
DECLARE curf CURSOR FOR SELECT id_client ,name ,surname , sex, addres,phone,CONCAT(DAYNAME(date_of_birthd),' ',DAY(date_of_birthd),' ',MONTHNAME(date_of_birthd),' ',YEAR(date_of_birthd))  
FROM client
WHERE phone != 0;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET _end=1;
OPEN curf;
wet: LOOP
FETCH curf INTO id, bname, bsurname, bsex, baddress, bphone, bbdate;
IF _end THEN LEAVE wet;
END IF;
INSERT INTO binfo VALUES(id, bname, bsurname, bsex, baddress, bphone, bbdate);
END LOOP wet;
CLOSE curf;
END
// 
CALL info();//
SELECT * FROM binfo;











