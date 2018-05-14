use bike_rent;
-- 1--------------------------------------------------------------
select 
	client.name,
	client.surname,
	rent.date_start,
	bike.mark 
from 
	client,
	rent,
    bike,
    bike_has_rent
where bike.id_bike=bike_has_rent.bike_id_bike 
and rent.id_rent=rent_id_rent 
and client.id_client=client_id_client
order by client.name asc;

-- 2--------------------------------------------------------------

select 
	name,
	surname,
    mark,
    type,
    day_price
from 
	rent 
right join client on client.id_client=rent.client_id_client
	 join rent_has_accessory on rent.id_rent=rent_has_accessory.rent_id_rent
		join accessory on accessory.id_accessory=rent_has_accessory.accessory_id_accessory
	
where day_price > 50
order by name asc;

-- 3--------------------------------------------------------------


select 
	c.name as 'Ім"я клієнта',
    c.surname as 'Прізвище клінта'
    ,w.name as 'Ім"я продавця',
    w.surname as 'Прізвище продавця',
    r.date_start as 'Дата заключення договору'
from 
	client c,
    worker w,
    rent r
where 
	w.id_worker=r.worker_id_worker 
	and c.id_client=r.client_id_client
order by c.name desc;


-- 4--------------------------------------------------------------

select DISTINCT 
	name,
	surname,
    b.mark,
    acs.mark,
    (acs.day_price+b.day_price) as 'Rent by 1 day',
    (r.date_finish-r.date_start)*(acs.day_price+b.day_price) as 'Full price'
    
from client c
	right join rent r on c.id_client = r.client_id_client
		right join rent_has_accessory rha on r.id_rent=rha.rent_id_rent
			right join accessory acs on acs.id_accessory=rha.accessory_id_accessory
				right join bike_has_rent bhr on bhr.rent_id_rent = r.id_rent
					right join bike b on b.id_bike = bhr.bike_id_bike
where r.date_finish-r.date_start>0

order by surname asc;


-- 5--------------------------------------------------------------

select 
	c.name,
    c.surname,
	if (r.date_finish-r.date_start>3,b.day_price-b.day_price*0.1,b.day_price) as 'Price With Discount',
    b.day_price
from 
	client c,
    bike b,
    rent r,
    bike_has_rent bhr
where
	r.client_id_client=c.id_client
    and b.id_bike=bhr.bike_id_bike
    and r.id_rent=bhr.rent_id_rent
	and b.day_price>200
    and r.date_finish-r.date_start>=3
order by c.name desc;

-- 6--------------------------------------------------------------

SELECT
	b.mark,
    b.day_price,
CASE 
 WHEN b.day_price between 100 and 150 THEN 'Low price' 
 WHEN b.day_price between 200 and 300 THEN 'Midle price'
 ELSE 'Hight price'
END
AS 'Type price of bike'
FROM 
	bike b
ORDER BY b.day_price;

-- 7--------------------------------------------------------------

select 
	name,
    surname,
    policy_number
from 
	client 
		cross join rent on client.id_client=rent.client_id_client
			cross join insurance on insurance.rent_id_rent=rent.id_rent
where name like 'І%'
order by name;

-- 8--------------------------------------------------------------

(select 
	b.mark,
    b.type,
    p.name,
    p.coutry
from bike b
	left join bike_producer p on b.bike_producer_id_bike_producer=p.id_bike_producer
where b.day_price>200)
union
(select 
	b.mark,
    b.type,
    p.name,
    p.coutry
from bike b
	left join bike_producer p on b.bike_producer_id_bike_producer=p.id_bike_producer
where b.mark like 'C%')
    
    
-- 9--------------------------------------------------------------
    

    
    
    