-- 1. 
SELECT *
FROM nomnom;

-- 2.
SELECT DISTINCT neighborhood
from nomnom;

-- 3.
SELECT DISTINCT cuisine
from nomnom;

-- 4.
SELECT *
FROM nomnom
where cuisine = "Chinese";

-- 5.
SELECT *
FROM nomnom
where review >= 4;

-- 6.
SELECT *
FROM nomnom
where cuisine = "Italian" AND price = "$$$";

-- 7.
SELECT *
FROM nomnom
where name LIKE "%meatball%";

-- 8.
SELECT *
FROM nomnom
where neighborhood = "Midtown" OR
      neighborhood = "Downtown" OR
      neighborhood = "Chinatown";

-- 9.
SELECT *
from nomnom
where health is null;

-- 10.
SELECT *
from nomnom
order by review DESC
LIMIT 10;

-- 11.
SELECT name
case 
when review > 4.5 then "Extraordinary"
when review > 4 then "Excellent"
when review > 3 then "Good"
when review > 2 then "fair"
else "Poor"
end as "Review"
from nomnom;