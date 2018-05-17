-- 1--------------------------------------------------------------


drop view info_about_client;
Create view info_about_client as
select 
	client.id_client as 'id клієнта', 
	client.surname as 'Прізвище клієнта',
	client.name as 'Ім`я клієнта', 
	client.date_of_birthd as 'Дата народження клієнта', 
	rent.date_start as 'Дата початку оренди',
	rent.date_finish as 'Дата закінчення оренди',
	date_payment as 'дата оплати оренди'
from 
	client
right join 
	rent on client.id_client=rent.client_id_client
where date_start like '2018-05%';

select * from info_about_client;

-- 2--------------------------------------------------------------

drop view name_like_i;
create view name_like_i as
select 
	client.name as 'Ім.я клієнта',
	client.surname as 'Прізвище клієнта',
	rent.date_start as 'Дата початку оренди',
	bike.mark as 'Марка велосипеда' 
from 
	client ,
	rent ,
    bike ,
    bike_has_rent
where bike.id_bike=bike_has_rent.bike_id_bike 
and rent.id_rent=rent_id_rent 
and client.id_client=client_id_client
and client.name like'І%'
order by client.name asc;

select * from name_like_i;

-- 3--------------------------------------------------------------

drop view time_of_rent;
Create view time_of_rent as
select  
	client.surname as 'Прізвище клієнта',
	client.name as 'Ім`я клієнта', 
	rent.date_start as 'Дата початку оренди',
	rent.date_finish as 'Дата закінчення оренди',
	concat(rent.date_finish-rent.date_start) as 'Кількість днів оренди'
from 
	client
left join 
	rent on client.id_client=rent.client_id_client
where rent.date_finish-rent.date_start>1;

select * from time_of_rent;

-- 4--------------------------------------------------------------

drop view top_5_bikes;

create view top_5_bikes as 
	select 
		mark,
        type,
        day_price,
        deposit_amount
	from bike 
    where type like'Гірський' or type like 'Шосейний' limit 5;
    
    select *from top_5_bikes;

-- 5--------------------------------------------------------------

drop view price_acs_for_all_day;

create view price_acs_for_all_day as 
	select 
        name,
        surname,
        mark,
        type,
        deposit_amount,
        day_price,
        concat(if((r.date_finish-r.date_start)>0,(r.date_finish-date_start)*(acs.day_price),acs.day_price)) as 'price for all day'
	from 
		client c
			right join rent r on c.id_client = r.client_id_client
				right join rent_has_accessory rha on r.id_rent=rha.rent_id_rent
					right join accessory acs on acs.id_accessory=rha.accessory_id_accessory
   where day_price>60
   order by name;
    
select *from price_acs_for_all_day;
    
    
    
    
    
    
    
    
    
    
    
