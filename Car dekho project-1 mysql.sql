--- Create DataBase name car_Dekho---
use car_Dekho;

-- Read Data--
-- Rename The Table Name--

alter table car_dekho.`car dekho`
rename to car_dekhoo;

select * from car_dekhoo;

-- total cars : to get a count of total records--

select count(*) from car_dekhoo;

-- how many cars availaible in 2023---

select count(*) from car_dekhoo
where year = 2023;

-- how many cars available in 2020,2021,2022 --

select year , count(*) from car_dekhoo
where year in (2020,2021,2022)
group by year;

-- client asked me to print the total of all cars by year --

select year , count(*) from car_dekhoo
group by year;

-- client asked to car dealer agent . how many diesel cars will there be in 2020? --

select count(*) from car_dekhoo
where fuel = 'diesel' and year = 2020;

-- client request the car dealer . how many petrol cars there in 2020?--

select year , count(*) from car_dekhoo
where fuel = 'petrol' and year = 2020;

-- The manager told the employee to give a print . All the fuel cars( petrol,diesel,and CNG came by all year--

select year,count(*) from car_dekhoo where fuel='Petrol' group by year;
select year,count(*) from car_dekhoo where fuel='Diesel' group by year;
select year,count(*) from car_dekhoo where fuel='CNG' group by year;

-- manager ask which year has more than 100 cars --

select year,count(*) from car_dekhoo 
group by year having count(*)>=100;

select year , count(*) from car_dekhoo
group by year having count(*)<=100;

-- the manager said to the employee.all cars count details between 2015 and 2023 and need complete list--

select year , count(*) from car_dekhoo
where year between 2015 and 2023
group by year;

-- the manager said to the employee all cars  details between 2015 and 2023 and need complete list--

select * from car_dekhoo
where year between 2015 and 2023;






