* 8.4 - Intro to Database Schemas and SQL

**Release 5 - selecting from a database

1. select * FROM states;
2. select * FROM regions;
3. select state_name,population FROM states;

4.
select state_name,population
FROM states
ORDER BY population DESC;

5.
select state_name FROM states WHERE region_id='7';

6.
select state_name,population_density
FROM states
WHERE population_density>50
ORDER BY population_density;

7.
select state_name
from states
where population between 1000000 and 1500000;

8.
select state_name,region_id
from states
order by region_id;

9.
select region_name
from regions
where region_name LIKE '%central%';

10.
SELECT regions.region_name, states.state_name
FROM regions
INNER JOIN states
ON regions.id=states.region_id;