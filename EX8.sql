-- 8) Print the countries whose downloaded are more than the downloads from China ("CN")

select country from cw_table
group by country
having count(country) > (select count(country) from cw_table where country='CN');