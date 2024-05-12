--validate the dataset
select * from cricket.clean.match_detail_clean
where match_type_number = 4681;

--by batsman
select 
   country,
   batter,
   sum(runs)
from
   cricket.clean.delivery_clean_tbl
where match_type_number = 4681
group by country, batter
order by 1,2,3 desc;

--by team
select 
  country,
  sum(runs) + sum(extra_runs)
from 
  cricket.clean.delivery_clean_tbl
where match_type_number = 4681
group by country
order by 1,2 desc;
