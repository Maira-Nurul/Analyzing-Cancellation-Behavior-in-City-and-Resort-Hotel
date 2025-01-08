--Hotel Cancellation Rate
SELECT 
    hotel,
    arrival_date_year,
    CONCAT(ROUND((COUNT(CASE WHEN is_canceled = 1 THEN 1 END) * 100.0) / COUNT(*), 2), '%') AS cancellation_rate
FROM 
    hotel_midterm hm 
GROUP BY 
    hotel, arrival_date_year;

--Average Lead Time and Total of Special Requests
WITH
  AvgLeadTime AS (
    SELECT AVG(lead_time) AS overall_avg_lead_time
    FROM hotel_midterm hm)

 SELECT total_of_special_requests,
        Round (AVG(lead_time), 0) AS average_lead_time
 FROM hotel_midterm hm
 WHERE lead_time > (SELECT overall_avg_lead_time FROM AvgLeadTime)
 GROUP BY total_of_special_requests
 ORDER BY total_of_special_requests;

-- Average Total Revenue based on Dates
SELECT 
    reservation_status_date,
    ROUND(AVG(adr), 3) AS average_total_revenue
FROM hotel_midterm
WHERE 
    reservation_status = 'Check-Out' AND 
    total_of_special_requests > 2
GROUP BY 
    reservation_status_date
ORDER BY 
    average_total_revenue DESC

-- Average Revenue based on Lead Time
WITH
LeadTimeGroups AS (
SELECT
CASE
	WHEN lead_time BETWEEN 0 AND 14 THEN '0-14 days' 
	WHEN lead_time BETWEEN 15 AND 28 THEN '15-28 days'
	WHEN lead_time BETWEEN 29 AND 42 THEN '29-42 days'
	WHEN lead_time BETWEEN 43 AND 56 THEN '43-56 days'
	WHEN lead_time BETWEEN 57 AND 70 THEN '57-70 days'
	WHEN lead_time BETWEEN 71 AND 84 THEN '71-84 days'
	WHEN lead_time BETWEEN 85 AND 98 THEN '85-98 days'
	WHEN lead_time > 98 THEN '>98 days'
	END AS lead_time_range,adr
FROM hotel_midterm hm
)
SELECT
lead_time_range,
ROUND (AVG(adr), 2) AS average_adr
FROM LeadTimeGroups
GROUP BY lead_time_range
ORDER BY lead_time_range;

    
