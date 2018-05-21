-- 1-----------------------------------------------------------------------------------

create view full_price as 
 select 
 	c.id_client,
	concat(c.name,' ',c.surname) as "Прізвище та імя клієнта",
	b.mark as "Марка велосипеда",
    acs.mark as "Марка Аксесуара",
	acs.type as "Тип аксесуара",
-- 	r.date_start,
-- 	r.date_finish,
-- 	r.date_payment,
	case
		when (r.date_finish - r.date_start) > 0 and (r.date_payment - r.date_finish) > 0 
			then (r.date_finish - r.date_start) * (acs.day_price + b.day_price)+(r.date_payment-r.date_finish) *(acs.day_price + b.day_price)*0.2
		when (r.date_finish - r.date_start) = 0 and (r.date_payment - r.date_finish) > 0 
			then (acs.day_price + b.day_price) + (acs.day_price + b.day_price)*0.2
		when (r.date_finish - r.date_start) = 0 and (r.date_payment - r.date_finish) <= 0 
			then acs.day_price + b.day_price
		when (r.date_finish - r.date_start) > 0 and (r.date_payment-r.date_finish) <= 0 
			then (r.date_finish-r.date_start)*(acs.day_price+b.day_price)
		when r.date_payment is null and (r.date_finish - r.date_start) > 0
			then (r.date_finish-r.date_start)*(acs.day_price+b.day_price)
		when r.date_payment is null and (r.date_finish - r.date_start) = 0
			then acs.day_price + b.day_price
	end as "Повна вартість оренди"
	
	from client c
	right join rent r on c.id_client = r.client_id_client
		right join rent_has_accessory rha on r.id_rent=rha.rent_id_rent
			right join accessory acs on acs.id_accessory=rha.accessory_id_accessory
				right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
					right join bike b on b.id_bike = bhr.bike_id_bike
					
where r.date_start between '2018-03-12'  and '2018-05-11'
order by c.name;

select * from full_price;
	

-- 2-----------------------------------------------------------------------------------

create view damage_bike as 
 select 
 	cl.name as " Імя",
	cl.surname as "Прізвище",
	b.mark as "Марка велосипеда",
	dam.damage_date as "Дата поломки",
	dam.work_status as "Поломка",
	dam.sum as "Ціна ремонту"
from client cl
	right join rent r on cl.id_client = r.client_id_client
		right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
			right join bike b on b.id_bike = bhr.bike_id_bike
				right join damage dam on b.id_bike = dam.bike_id_bike
where cl.id_client = dam.client_id_client

order by dam.sum;
 
 
 select * from damage_bike;
 
 -- 3-----------------------------------------------------------------------------------


create view rent_by_worker as 
 	select 
		concat(w.name,' ',w.surname) as "Прізвище та імя працівника",
 		concat(c.name,' ',c.surname) as "Прізвище та імя клієнта",
		b.mark as "Марка велосипеда"
		from client c
			left join rent r on c.id_client = r.client_id_client
				left join worker w on w.id_worker = r.worker_id_worker
					left join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
						left join bike b on b.id_bike = bhr.bike_id_bike
where c.name = 'Влад';					
						
 select * from rent_by_worker;
 
 -- 4-----------------------------------------------------------------------------------
 
 create view about_bike as 
  select 
  	concat('Марка - ',mark,', Тип - ',type,', Денна ціна - ',day_price,', Ціна депозиту - ',deposit_amount,', Ціна ремонту від - ',replacement_cost) as "Каталог Велосипедів"
  from bike;
 
 
  -- 5-----------------------------------------------------------------------------------
	
 
 
 
 
 
 
 
 
 