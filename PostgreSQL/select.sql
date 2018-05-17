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
where r.date_finish-r.date_start>0
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
where d.sum between 3000 and 10000
order by d.sum;

-- 4-----------------------------------------------------------------------------------
















