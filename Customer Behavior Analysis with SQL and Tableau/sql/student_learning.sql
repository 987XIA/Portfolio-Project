USE customer_engagement;

SELECT c.*
FROM
(
SELECT 
    student_id,
    date_watched,
    round(SUM(minutes_watched),2) AS minutes_watched,
    paid
FROM
(
SELECT 
	student_id, date_watched, round(SUM(minutes_watched),2) AS minutes_watched, MAX(paid) AS paid
FROM
(
SELECT
	l.student_id,
    l.date_watched,
    l.minutes_watched,
    p.date_start,
    p.date_end,
    CASE
		WHEN date_start IS NULL AND date_end IS NULL THEN 0
		WHEN date_watched BETWEEN date_start AND date_end THEN 1
		ELSE 0
	END AS paid
FROM student_learning l
LEFT JOIN purchases_info p USING(student_id)
) AS a
GROUP BY student_id, date_watched) b
GROUP BY student_id, date_watched) c;