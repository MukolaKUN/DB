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
END//

call copy_data();