-- 12) The field "r_os" is the operating system of the users.
--     -- 	Here we would like to know what main system we have the relevant counts, and the proportion (in percentage).

--test code to see if i can grab the total
-- select sum(total) as fully_total_r_os from ( select r_os,count(r_os) as total from cw_table group by r_os) y;


--test code for download_count
-- select r_os,count(*) as download_count
-- from cw_table
-- group by (r_os)
-- order by count(*) desc;

select r_os,--r_os grabs each operating system name
       -- count(r_os) is the total number of apperances of that particular r_os; sum adds the total number of values from the column "total'
       (count(r_os)/(select sum(total) as fully_total_r_os from
                -- counts the number of appearances of r_os that will be added together in sum
                ( select count(r_os) as total from cw_table group by r_os)
                                                            sum_total)*100) as proportion from cw_table
group by (r_os)
order by count(*) desc;

