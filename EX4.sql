-- 4) How many recordings are from China ("CN")?
select count(country) from cw_table
where country='CN';