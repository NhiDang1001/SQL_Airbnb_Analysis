#AIRBNB CASE - Nhi #

#Cleaning
SELECT count(distinct uid)
FROM Airbnb_booking;

SELECT DISTINCT age
FROM Airbnb_booking
order by age asc;

SELECT *
FROM Airbnb_booking
WHERE age is not null
order by age asc
limit 1;

#Demographics
SELECT gender, count(gender)
FROM Airbnb_booking
group by gender;

SELECT gender,count(*), avg(age) 
FROM Airbnb_booking
group by gender;

SELECT gender, avg(age) 
FROM Airbnb_booking
where age > 10 and age < 100 
group by gender;

SELECT country_destination, count(uid) as visitors
FROM Airbnb_booking
where country_destination != "NDF"
group by country_destination
HAVING visitors > 500;

create table top_5_countries_MALE
SELECT country_destination, count(*) as visitors
FROM Airbnb_booking
where country_destination != "NDF" and gender = "Male"
group by country_destination
order by visitors desc
limit 5;

create table top_5_countries_FEMALE
SELECT country_destination, count(*) as visitors
FROM Airbnb_booking
where country_destination != "NDF" and gender = "Female"
group by country_destination
order by visitors desc
limit 5;


SELECT count(distinct first_device_type)
FROM Airbnb_booking;

SELECT first_device_type,count(first_device_type)
FROM Airbnb_booking
WHERE first_device_type REGEXP 'desktop'
group by first_device_type;

#Apple product
SELECT first_device_type,count(first_device_type)
FROM Airbnb_booking
WHERE first_device_type REGEXP '^mac|^i'
group by first_device_type;

#Time difference 
SELECT *
FROM Airbnb_booking
ORDER BY date_account_created asc;

#1.
SELECT count(*)
from Airbnb_booking;

select count(distinct uid)
from Airbnb_booking;

#2.
select distinct age
from Airbnb_booking
order by age desc;

#3.
select *
from Airbnb_booking
where age = 2014;

#4.
select count(*)
from Airbnb_booking
where gender = "male";

select gender, count(*)
from Airbnb_booking
group by gender;

#4. 
select gender, avg(age)
from Airbnb_booking
group by gender; 

#5.
select gender, count(gender), avg(age)
from Airbnb_booking
where age>10 and age<100
group by gender; 

#6. 
select country_destination, count(*) as visitors
from Airbnb_booking
where country_destination != "NDF" 
group by country_destination
having visitors > 500;

#7. 
select country_destination, count(*) as visitors
from Airbnb_booking
where country_destination != "NDF" and gender = "MALE"
group by country_destination
order by visitors desc
limit 5;

#8. 
select country_destination, count(*) as visitors
from Airbnb_booking
where country_destination != "NDF" and gender = "FEMALE"
group by country_destination
order by visitors desc
limit 5;

#9.########
select country_destination, count(country_destination) as visitors
from Airbnb_booking
where country_destination != "NDF" 
group by country_destination 
order by count(country_destination) desc
limit 5;


#10.
select distinct first_device_type
from Airbnb_booking;

#phone
select count(*)
from Airbnb_booking
where first_device_type like "%phone%";

#desktop
select count(*)
from Airbnb_booking
where first_device_type like "%desktop";

#Apple product
select *
from Airbnb_booking
where first_device_type regexp '^i|mac';

#TIME DIFFERENCE#
select count(*)
from Airbnb_booking 
where date_account_created=date_first_booking;

#2. 
select count(*)
from Airbnb_booking 
where month(date_account_created) = month(date_first_booking) and year(date_account_created = year(date_first_booking);

#3. 
select  datediff(date_account_created,date_first_booking) as dategap
from Airbnb_booking 
where date_first_booking is not null and date_account_created is not null; 

