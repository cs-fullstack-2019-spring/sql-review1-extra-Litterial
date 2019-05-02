-- 9) Print the average length of the package name of all the UNIQUE packages

--test code to see if I get unique packages
-- select package,avg(size) from cw_table
-- group by package
-- having count(package)=1
-- order by package asc;


-- take the average of the column length_of_name
select avg(length_of_name) as total_length
from(             --length_of_name takes the character length of each package where their number of apperances is equal to 1
    select package,(char_length(package||'')) as length_of_name from cw_table
    group by package
    having count(package)=1
    order by package asc)
    cw_table;


