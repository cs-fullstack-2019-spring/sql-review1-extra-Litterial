-- 11) Print the name of the package whose download count is bigger than 1000.
select package from cw_table
group by package
having count(package)>1000;