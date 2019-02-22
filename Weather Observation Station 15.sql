--https://www.hackerrank.com/challenges/weather-observation-station-15/problem

--Solution 1

SELECT ROUND(`LONG_W`, 4) FROM `STATION` 
WHERE `STATION`.`LAT_N` < 137.2345
ORDER BY `LAT_N` DESC
LIMIT 1

--Solution 2

SELECT CAST(LONG_W AS DECIMAL(10,4)) FROM STATION
    WHERE LAT_N = 
    (
        SELECT MAX(LAT_N) from STATION 
            WHERE LAT_N < 137.2345
    );
