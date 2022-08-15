-- 1. 
SELECT *
FROM nomnom;

-- 2.
SELECT DISTINCT neighborhood
FROM nomnom;

-- 3.
SELECT DISTINCT cuisine
FROM nomnom;

-- 4.
SELECT *
FROM nomnom
WHERE cuisine = "Chinese";

-- 5.
SELECT *
FROM nomnom
WHERE review >= 4;

-- 6.
SELECT *
FROM nomnom
WHERE cuisine = "Italian" AND price = "$$$";

-- 7.
SELECT *
FROM nomnom
WHERE name LIKE "%meatball%";

-- 8.
SELECT *
FROM nomnom
WHERE neighborhood = "Midtown" OR
      neighborhood = "Downtown" OR
      neighborhood = "Chinatown";

-- 9.
SELECT *
from nomnom
WHERE health is null;

-- 10.
SELECT *
FROM nomnom
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
FROM nomnom;
