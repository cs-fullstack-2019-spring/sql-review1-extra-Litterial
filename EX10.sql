-- 10) Get the package whose downloading count ranks 2nd (print package name and it's download count).
select package,count(package) as second_highest_download_count from cw_table
group by package
order by count(package) desc
limit 1 offset 1;
