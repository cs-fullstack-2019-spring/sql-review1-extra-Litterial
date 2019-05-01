-- 7) How many recordings are from China ("CN") or Japan("JP") or Singapore ("SG")?
select count(country) as recodings_from_China_Japan_or_Singapore from cw_table
where country ='CN' or country ='JP' or country='SG;'