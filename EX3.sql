-- 3) How many times the package "Rcpp" was downloaded?
select count(package) from cw_table
where package='Rcpp';