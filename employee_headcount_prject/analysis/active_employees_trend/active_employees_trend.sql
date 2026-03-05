WITH dl AS (
    SELECT DISTINCT 
        DATE_ADD(
            DATE_ADD(DATE_TRUNC(dates.datekey, "month"), 1, "month"),
            -1,
            "day"
        ) AS eomonth
    FROM dates
)

SELECT d.eomonth, COUNT(1) AS empcount
FROM dl d 
JOIN employees e
    ON e.startdate <= d.eomonth
   AND (e.enddate > d.eomonth OR e.enddate IS NULL)
GROUP BY d.eomonth
ORDER BY 1;