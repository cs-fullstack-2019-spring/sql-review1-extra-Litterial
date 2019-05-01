-- 5) Give the package name and how many times they're downloaded. Order by the 2nd column descently.
select package, count(package) as Package_Count from cw_table
group by package
order by count(package) desc;