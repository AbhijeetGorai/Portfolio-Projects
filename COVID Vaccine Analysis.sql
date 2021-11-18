--Getting the count of countries where vaccination started first in 2021
select count(country) from dbo.country_vaccination where date < '2021-02-01 00:00:00.000';

--Getting total count of people vaccinated in different countries
select country,sum(total_vaccinations) as "Total People vaccinated" from dbo.country_vaccination group by country order by [Total People vaccinated] desc;

--Getting a count of people left to be vaccinated in different countries
select country,sum(total_vaccinations)-sum(cast(people_fully_vaccinated as numeric)) as "People Left to be vaccinated" from dbo.country_vaccination group by country;

--Getting a count of countries where Sputnik vaccine was not used
select count(*) from dbo.country_vaccination where vaccines not like '%Sputnik%';

--Getting a count of vaccines available for each country
select count(distinct vaccine) from dbo.vaccination_manufacturer;