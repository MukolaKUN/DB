-- 1-----------------------------------------------------------------------------------
select DISTINCT 
	name,
	surname,
    b.mark,
    acs.mark,
   concat(acs.day_price+b.day_price) as "Rent_by_1_day",
    concat((r.date_finish-r.date_start)*(acs.day_price+b.day_price)) as "Full_price"
    
from client c
	right join rent r on c.id_client = r.client_id_client
		right join rent_has_accessory rha on r.id_rent=rha.rent_id_rent
			right join accessory acs on acs.id_accessory=rha.accessory_id_accessory
				right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
					right join bike b on b.id_bike = bhr.bike_id_bike
where r.date_finish-r.date_start>1
and b.day_price between 200 and 400

order by surname asc;


-- 2-----------------------------------------------------------------------------------

SELECT
	b.mark,
    b.deposit_amount,
case
 WHEN b.deposit_amount between 500 and 5000 THEN 'Low price' 
 WHEN b.deposit_amount between 5000 and 1000 THEN 'Midle price'
 WHEN b.deposit_amount between 1000 and 13000 THEN 'Hight price'
 ELSE 'Very hight price'
end
AS "Type price of bike"
FROM 
	bike b
ORDER BY b.day_price;


-- 3-----------------------------------------------------------------------------------

select 
	b.mark,
	b.type,
	r.rent_status,
	d.work_status,
	d.damage_date,
	d.sum
from rent r
	right join bike_has_rent on r.id_rent = rent_id_rent
		right join bike b on bike_id_bike = b.id_bike
			right join damage d on b.id_bike = d.bike_id_bike
where d.sum between 1000 and 10000
order by d.sum;

-- 4-----------------------------------------------------------------------------------

select 
	name,
	surname,
   concat(acs.day_price+b.day_price) as "Rent by 1 day",							 
case 
when date_finish-date_start>0 then (r.date_finish-r.date_start)*(acs.day_price+b.day_price)
when date_finish-date_start=0 then acs.day_price+b.day_price
end
as "Full price"
from client c
	right join rent r on c.id_client = r.client_id_client
		right join rent_has_accessory rha on r.id_rent=rha.rent_id_rent
			right join accessory acs on acs.id_accessory=rha.accessory_id_accessory
				right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
					right join bike b on b.id_bike = bhr.bike_id_bike
where c.name='Ігор'
order by surname asc;

-- 5-----------------------------------------------------------------------------------
select
	b.mark,
	b.type,
	d.work_status
from bike b
		inner join damage d on b.id_bike=d.bike_id_bike
where d.work_status='Зламане сидіння';

-- 6-----------------------------------------------------------------------------------
/*select 
	name,
	surname,
	sex,
	mark,
	type
from client
where id_client = (select client_id_client
					 from rent
					 where id_rent =(select rent_id_rent
										  from bike_has_rent
										  where bike_id_bike = (select id_bike
																from bike 
																where mark = 'Cannondale FAT CAAD 2')))*/


-- 7-----------------------------------------------------------------------------------
select
	name,
	phone,
	coutry
from bike_producer
where id_bike_producer=all(select
						  		bike_producer_id_bike_producer
						  from bike
						  where type='Гірський')
	
-- 8-----------------------------------------------------------------------------------
select distinct
	cl.name,
	cl.surname,
	b.mark,
	b.type,
	dam.work_status,
	dam.sum,
	case 
		when date_finish-date_start>0 and dam.work_status is not null then (r.date_finish-r.date_start)*(b.day_price+dam.sum)
		when date_finish-date_start=0 and dam.work_status is null then b.day_price
	end
	as "If have damage"
from client cl
	right join rent r on cl.id_client = r.client_id_client
		right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
			right join bike b on b.id_bike = bhr.bike_id_bike
				right join damage dam on b.id_bike = dam.bike_id_bike
where cl.id_client=dam.client_id_client; 					
						
-- 9-----------------------------------------------------------------------------------
select
	cl.name,
	cl.surname,
	b.mark,
	b.type,
	dam.work_status,
	dam.sum
from client cl
	right join rent r on cl.id_client = r.client_id_client
		right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
			right join bike b on b.id_bike = bhr.bike_id_bike
				right join damage dam on b.id_bike = dam.bike_id_bike
where cl.id_client = dam.client_id_client
and dam.sum>500;

-- 10-----------------------------------------------------------------------------------
  select 
  	concat('Марка - ',mark,', Тип - ',type,', Денна ціна - ',day_price,', Ціна депозиту - ',deposit_amount,', Ціна ремонту від - ',replacement_cost) as "Каталог Велосипедів"
  from bike
  where day_price between 200 and 350
  order by day_price ;
 
	












