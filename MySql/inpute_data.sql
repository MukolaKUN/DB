use bike_rent;

insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Іван','Процак','Івасюка 15','+380970993212','proz@gmail.com','1995-12-04','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Ігор','Матвійчук','Майзлі 43','+380959834125','egorcreed@ukr.net','1999-10-17','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Вероніка','Тичковська','Пасічна 32','+380987432749','tatoo@ukr.net','1989-02-13','жін');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Олександр','Марчак','Каскад 2','+380994376143','alpinist@gmail.com','1999-09-07','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Влад','Фреїк','Кінашів 12','+380975902119','archeage@mail.ru','1998-10-12','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Василь','Деренько','Драгомиридчани 59','+380974012583','frontendshit@gmail.com','1999-01-11','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Роман','Іванів','Галицька 3','+380980941132','romaha@ukr.net','1992-08-12','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Степан','Васильович','Івана Франка 15','+380954467122','stepanyshka@ukr.net','1985-10-10','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Вікторія','Слободяник','Тустанська 35','+3809609874244','whores@gmail.com','1999-03-10','жін');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Петро','Сидор','Програмісться 87','+380998743264','sidar@mail.ru','1998-02-12','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Анастасія','Кіркорова','Іванська 5','+3809809984333','kirk@ukr.net','1987-09-09','жін');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Марія','Семеген','Бурштинська 37','+380976538164','english@gmail.com','1996-12-04','жін');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Богдан','Іаськів','Тамдесь 4','+380980084312','bodya@gmail.com','1999-05-22','чол');
insert into client(name,surname,addres,phone,email,date_of_birthd,sex)
values ('Богдан','Яцишин','Мазепи 3','+380960743214','yatz@ukr.net','2000-03-02','чол');


insert into worker(Name,Surname,date_birthday)
values ('Богдан','Кловак','2000-04-23');
insert into worker(Name,Surname,date_birthday)
values ('Ростислав','Собчишин','2000-04-26');
insert into worker(Name,Surname,date_birthday)
values ('Максим','Соколовський','1999-12-12');
insert into worker(Name,Surname,date_birthday)
values ('Петро','Сидор','1986-05-23');
insert into worker(Name,Surname,date_birthday)
values ('Данило','Кашин','1990-06-24');



insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-03-12','2018-03-15','2018-03-12',NULL,'Сплачено','1','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-01','2018-05-04',NULL,NULL,'Очікується','2','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-10','2018-05-11',NULL,'В резерві',NULL,'3','4');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-03-16','2018-03-17','2018-03-17',NULL,'Сплачено','4','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-04-23','2018-04-27','2018-04-27',NULL,'Сплачено','5','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-03','2018-05-05','2018-05-06',NULL,'Сплачено','6','5');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-10','2018-05-12',NULL,NULL,'Очікується','7','5');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-12','2018-05-12','2018-05-12',NULL,'Сплачено','8','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-11','2018-05-12','2018-05-12',NULL,'Сплачено','9','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-06','2018-05-08','2018-05-08',NULL,'Сплачено','10','4');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-05-20','2018-05-23',NULL,'Зарезервовано',NULL,'11','3');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-06-01','2018-06-04',NULL,'Зарезервовано',NULL,'12','5');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-06-05','2018-06-06',NULL,'Зарезервовано',NULL,'13','4');
insert into rent(date_start,date_finish,date_payment,reservation_status,rent_status,client_id_client,worker_id_worker)
values('2018-06-06','2018-06-08',NULL,'Зарезервовано',NULL,'14','5');




insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1234','2018-03-12','2018-03-15','1');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1235','2018-05-01','2018-05-04','2');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1236','2018-05-10','2018-05-11','3');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1237','2018-03-16','2018-03-17','4');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1238','2018-04-23','2018-04-27','5');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1239','2018-05-03','2018-05-05','6');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1241','2018-05-10','2018-05-12','7');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1242','2018-05-12','2018-05-12','8');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1243','2018-05-11','2018-05-12','9');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1244','2018-05-20','2018-05-23','10');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('1245','2018-05-20','2018-05-23','11');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('2345','2018-06-01','2018-06-04','12');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('3421','2018-06-05','2018-06-06','13');
insert into insurance(policy_number,date_start,date_end,rent_id_rent)
values('4542','2018-06-06','2018-06-08','14');



insert into bike_producer(name,phone,email,coutry)
values('Cannondale','+13904943333','canndale@gmail.com','USA');
insert into bike_producer(name,phone,email,coutry)
values('Apollo','','apollo@gmail.com','Germany');
insert into bike_producer(name,phone,email,coutry)
values('Electra Water','','Electra@gmail.com','Italy');
insert into bike_producer(name,phone,email,coutry)
values('Stolen SINNER','','sinnerbmx@ukr.net','Ukraine');



insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Cannondale FAT CAAD 2','Гірський','300','10000','5000','5','1');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Cannondale Scalpel SI 4 Carbon 2017','Гірський','500','15000','7000','5','1');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Cannondale Bad Boy 4 2018','Міський','200','12000','2000','6','1');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Apollo Exceed 20 HI VIZ 2017','Міський','300','14000','3500','4','2');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Apollo GIRO 10','Шосейний','400','15000','4500','8','2');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Cannondale CAAD12 105','Шосейний','350','10000','2500','6','1');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Cannondale TRAIL GIRLS','Дитячі','150','2000','1000','5','1');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Electra Water Lily 1','Дитячі','100','1500','700','6','3');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Stolen SINNER XLT-FC RHD','BMX','250','7000','1200','4','4');
insert into bike(mark,type,day_price,deposit_amount,replacement_cost,bike_count,bike_producer_id_bike_producer)
values('Stolen SINNER XLT-FC LHD','BMX','300','8500','1500','4','4');


insert into damage(work_status,damage_date,sum,rent_id_rent,bike_id_bike,client_id_client)
values('Зламані передні тормоза','2018-03-15','500','1','1','1');
insert into damage(work_status,damage_date,sum,rent_id_rent,bike_id_bike,client_id_client)
values('Порваний ланцюг','2018-03-16','400','4','4','4');
insert into damage(work_status,damage_date,sum,rent_id_rent,bike_id_bike,client_id_client)
values('Зламане сидіння',NULL,'1000','5','5','3');
insert into damage(work_status,damage_date,sum,rent_id_rent,bike_id_bike,client_id_client)
values('Зігнута передня вилка','2018-05-05','2000','6','6','6');
insert into damage(work_status,damage_date,sum,rent_id_rent,bike_id_bike,client_id_client)
values('Зламані педалі','2018-05-12','500','8','8','8');


insert into accessory(mark,type,day_price,deposit_amount)
values('Electra Hello','Дзвінок','20','200');
insert into accessory(mark,type,day_price,deposit_amount)
values('TW DX3200BF','Зеркало','40','300');
insert into accessory(mark,type,day_price,deposit_amount)
values('Green Cycle DX-2280S','Зеркало','40','300');
insert into accessory(mark,type,day_price,deposit_amount)
values('Green Cycle GCS-514','Прикраса','10','50');
insert into accessory(mark,type,day_price,deposit_amount)
values('TW CD-310','Фляго-тримач','30','150');
insert into accessory(mark,type,day_price,deposit_amount)
values('INFINI I-106','Фара передня','45','340');
insert into accessory(mark,type,day_price,deposit_amount)
values('INFINI I-406R Vista 3','Фара задня','50','350');
insert into accessory(mark,type,day_price,deposit_amount)
values('Bellelli Summer Relax B-fix','Дитяче крісло','70','1000');
insert into accessory(mark,type,day_price,deposit_amount)
values('Bellelli Mr Fox Сlamp','Дитяче крісло','100','1000');
insert into accessory(mark,type,day_price,deposit_amount)
values('ONGUARD PITBULL Mini LS','Замок','40','200');



insert into role(name_role,worker_id_worker)
values('Власник',1);
insert into role(name_role,worker_id_worker)
values('Директор',2);
insert into role(name_role,worker_id_worker)
values('Продавець',3);
insert into role(name_role,worker_id_worker)
values('Продавець',4);
insert into role(name_role,worker_id_worker)
values('Продавець',5);


insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(1,2);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(1,8);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(1,6);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(2,4);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(2,6);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(3,7);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(3,1);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(3,3);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(4,10);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(4,9);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(5,7);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(6,8);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(8,5);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(8,10);
insert into rent_has_accessory(rent_id_rent,accessory_id_accessory)
values(10,10);




insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(1,1);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(1,2);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(2,2);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(2,5);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(3,8);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(3,4);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(4,4);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(3,3);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(4,5);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(5,10);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(5,9);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(6,6);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(6,7);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(7,7);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(8,8);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(8,7);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(8,3);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(9,2);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(9,9);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(9,4);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(10,10);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(10,1);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(1,11);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(2,11);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(5,12);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(6,12);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(7,13);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(3,13);
insert into bike_has_rent(bike_id_bike,rent_id_rent)
values(8,14);








































