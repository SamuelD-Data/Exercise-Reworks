-- How much do the current managers of each department get paid, relative to the average salary for the department? 



-- Is there any department where the department manager gets paid less than the average salary?



-- What languages are spoken in Santa Monica?

use world;

select language from countrylanguage
JOIN city on city.CountryCode = countrylanguage.CountryCode
where city.name = "santa monica";

--How many different countries are in each region?

