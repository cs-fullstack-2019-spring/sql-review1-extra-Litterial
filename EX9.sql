-- 9) Print the average length of the package name of all the UNIQUE packages
select package,avg(size) from cw_table
group by package
having count(package)=1
