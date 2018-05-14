drop database bike_rent;
create database bike_rent;
USE bike_rent ;


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.client (
  id_client INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  surname VARCHAR(45) NULL,
  addres VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  date_of_birthd DATE NULL,
  sex VARCHAR(45) NULL,
  PRIMARY KEY (id_client));


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.worker (
  id_worker INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(45) NULL,
  Surname VARCHAR(45) NULL,
  date_birthday DATE NULL,
  PRIMARY KEY (id_worker));



-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.rent (
  id_rent INT NOT NULL AUTO_INCREMENT,
  date_start DATE NULL,
  date_finish DATE NULL,
  date_payment DATE NULL,
  reservation_status varchar(40) NULL,
  rent_status varchar(40) NULL,
  client_id_client INT NOT NULL,
  worker_id_worker INT NOT NULL,
  PRIMARY KEY (id_rent),
    FOREIGN KEY (client_id_client)
    REFERENCES bike_rent.client (id_client)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (worker_id_worker)
    REFERENCES bike_rent.worker (id_worker)
    ON DELETE cascade
    ON UPDATE cascade);



-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.insurance (
  id_insurance INT NOT NULL AUTO_INCREMENT,
  policy_number VARCHAR(45) NULL,
  date_start DATE NULL,
  date_end VARCHAR(45) NULL,
  rent_id_rent INT NOT NULL,
  PRIMARY KEY (id_insurance),
    FOREIGN KEY (rent_id_rent)
    REFERENCES bike_rent.rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade);
    
-- -----------------------------------------------------
    
    CREATE TABLE IF NOT EXISTS bike_rent.bike_producer (
  id_bike_producer INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  coutry VARCHAR(45) NULL,
  PRIMARY KEY (id_bike_producer));
  
  
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS bike_rent.bike (
  id_bike INT NOT NULL AUTO_INCREMENT,
  mark VARCHAR(45) NULL,
  type VARCHAR(45) NULL,
  day_price DECIMAL(10) NULL,
  deposit_amount DECIMAL(10) NULL,
  replacement_cost DECIMAL(10) NULL,
  bike_count INT NULL,
  bike_producer_id_bike_producer INT NOT NULL,
  PRIMARY KEY (id_bike),
    FOREIGN KEY (bike_producer_id_bike_producer)
    REFERENCES bike_rent.bike_producer (id_bike_producer)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.damage (
  id_damage INT NOT NULL AUTO_INCREMENT,
  work_status VARCHAR(45) NULL,
  damage_date DATE NULL,
  sum DECIMAL(10) NULL,
  rent_id_rent INT NOT NULL,
  bike_id_bike INT NOT NULL,
  PRIMARY KEY (id_damage),
    FOREIGN KEY (rent_id_rent)
    REFERENCES bike_rent.rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (bike_id_bike)
    REFERENCES bike_rent.bike (id_bike)
    ON DELETE cascade
    ON UPDATE cascade);



-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.accessory (
  id_accessory INT NOT NULL AUTO_INCREMENT,
  mark VARCHAR(45) NULL,
  type VARCHAR(45) NULL,
  day_price DECIMAL(10) NULL,
  deposit_amount DECIMAL(10) NULL,
  PRIMARY KEY (id_accessory));



-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.role (
  id_role INT NOT NULL AUTO_INCREMENT,
  name_role VARCHAR(45) NULL,
  worker_id_worker INT NOT NULL,
  PRIMARY KEY (id_role),
    FOREIGN KEY (worker_id_worker)
    REFERENCES bike_rent.worker (id_worker)
    ON DELETE cascade
    ON UPDATE cascade);


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.rent_has_accessory (
  rent_id_rent INT NOT NULL,
  accessory_id_accessory INT NOT NULL,
    FOREIGN KEY (rent_id_rent)
    REFERENCES bike_rent.rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (accessory_id_accessory)
    REFERENCES bike_rent.accessory (id_accessory)
    ON DELETE cascade
    ON UPDATE cascade);


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bike_rent.bike_has_rent (
  bike_id_bike INT NOT NULL,
  rent_id_rent INT NOT NULL,
	FOREIGN KEY (bike_id_bike)
    REFERENCES bike_rent.bike (id_bike)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (rent_id_rent)
    REFERENCES bike_rent.rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade);

