DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;




Start Transaction;
Savepoint all_create;

Savepoint Client1;

CREATE TABLE client (
  id_client serial,
  name VARCHAR(45) NULL,
  surname VARCHAR(45) NULL,
  addres VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  date_of_birthd DATE NULL,
  sex VARCHAR(45) NULL,
  PRIMARY KEY (id_client));


Savepoint worker1;

CREATE TABLE worker (
  id_worker serial,
  Name VARCHAR(45) NULL,
  Surname VARCHAR(45) NULL,
  date_birthday DATE NULL,
  PRIMARY KEY (id_worker));


Savepoint rent1;

CREATE TABLE rent (
  id_rent serial,
  date_start DATE NULL,
  date_finish DATE NULL,
  date_payment DATE NULL,
  reservation_status varchar(40) NULL,
  rent_status varchar(40) NULL,
  client_id_client INT NOT NULL,
  worker_id_worker INT NOT NULL,
  PRIMARY KEY (id_rent),
    FOREIGN KEY (client_id_client)
    REFERENCES client (id_client)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (worker_id_worker)
    REFERENCES worker (id_worker)
    ON DELETE cascade
    ON UPDATE cascade);


Savepoint insurance1;

CREATE TABLE insurance (
  id_insurance serial,
  policy_number VARCHAR(45) NULL,
  date_start DATE NULL,
  date_end VARCHAR(45) NULL,
  rent_id_rent INT NOT NULL,
  PRIMARY KEY (id_insurance),
    FOREIGN KEY (rent_id_rent)
    REFERENCES rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade);
    
    
	
Savepoint bike_producer1;

  CREATE TABLE bike_producer (
  id_bike_producer serial,
  name VARCHAR(45) NULL,
  phone VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  coutry VARCHAR(45) NULL,
  PRIMARY KEY (id_bike_producer));
  
  
Savepoint bike1;

CREATE TABLE bike (
  id_bike serial,
  mark VARCHAR(45) NULL,
  type VARCHAR(45) NULL,
  day_price DECIMAL(10) NULL,
  deposit_amount DECIMAL(10) NULL,
  replacement_cost DECIMAL(10) NULL,
  bike_count INT NULL,
  bike_producer_id_bike_producer INT NOT NULL,
  PRIMARY KEY (id_bike),
    FOREIGN KEY (bike_producer_id_bike_producer)
    REFERENCES bike_producer (id_bike_producer)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


Savepoint damage1;

CREATE TABLE damage (
  id_damage serial,
  work_status VARCHAR(45) NULL,
  damage_date DATE NULL,
  sum DECIMAL(10) NULL,
  rent_id_rent INT NOT NULL,
  bike_id_bike INT NOT NULL,
  client_id_client INT NOT NULL,
  PRIMARY KEY (id_damage),
		FOREIGN KEY (rent_id_rent)
    REFERENCES rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade,
		FOREIGN KEY (bike_id_bike)
    REFERENCES bike (id_bike)
    ON DELETE cascade
    ON UPDATE cascade,
      FOREIGN KEY (client_id_client)
    REFERENCES client (id_client)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


Savepoint accessory1;

CREATE TABLE accessory (
  id_accessory serial,
  mark VARCHAR(45) NULL,
  type VARCHAR(45) NULL,
  day_price DECIMAL(10) NULL,
  deposit_amount DECIMAL(10) NULL,
  PRIMARY KEY (id_accessory));


Savepoint role1;

CREATE TABLE role (
  id_role serial,
  name_role VARCHAR(45) NULL,
  worker_id_worker INT NOT NULL,
  PRIMARY KEY (id_role),
    FOREIGN KEY (worker_id_worker)
    REFERENCES worker (id_worker)
    ON DELETE cascade
    ON UPDATE cascade);


Savepoint rent_has_accessory1;

CREATE TABLE rent_has_accessory (
  rent_id_rent INT NOT NULL,
  accessory_id_accessory INT NOT NULL,
    FOREIGN KEY (rent_id_rent)
    REFERENCES rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (accessory_id_accessory)
    REFERENCES accessory (id_accessory)
    ON DELETE cascade
    ON UPDATE cascade);


Savepoint bike_has_rent1;

CREATE TABLE bike_has_rent (
  bike_id_bike INT NOT NULL,
  rent_id_rent INT NOT NULL,
	FOREIGN KEY (bike_id_bike)
    REFERENCES bike (id_bike)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY (rent_id_rent)
    REFERENCES rent (id_rent)
    ON DELETE cascade
    ON UPDATE cascade);
	
	
	
	
	
/*rollback to savepoint all_create;
rollback to savepoint Client1;
rollback to savepoint worker1;
rollback to savepoint rent1;
rollback to savepoint insurance1;
rollback to savepoint bike_producer1;
rollback to savepoint bike1;
rollback to savepoint damage1;
rollback to savepoint accessory1;
rollback to savepoint rent_has_accessory1;
rollback to savepoint bike_has_rent1;*/

commit;
