USE customer_engagement;

WITH table_overall_minutes AS
(
	SELECT 
		ci.*,
		count(distinct sl.student_id) as students_watched,
		round(sum(sl.minutes_watched)) as minutes_watched
	FROM course_info ci
	JOIN student_learning sl 
		ON ci.course_id = sl.course_id
	GROUP BY ci.course_id
)

, table_minutes_per_student_and_completion_rate AS
(
	SELECT
		course_id,
		course_title,
		minutes_watched,
		ROUND(minutes_watched / students_watched, 2)AS minutes_per_student,
		ROUND((minutes_watched / students_watched)/ course_duration, 2)AS completion_rate
	FROM table_overall_minutes
)

SELECT *
FROM table_minutes_per_student_and_completion_rate;

-- combine above tables together 

SELECT
	course_id,
    course_title,
    minutes_watched,
    ROUND(minutes_watched / students_watched, 2)AS minutes_per_student,
	ROUND((minutes_watched / students_watched)/ course_duration, 2)AS completion_rate
FROM 
(
	SELECT 
		ci.*,
		count(distinct sl.student_id) as students_watched,
		round(sum(sl.minutes_watched)) as minutes_watched
	FROM course_info ci
	JOIN student_learning sl 
		ON ci.course_id = sl.course_id
	GROUP BY ci.course_id
) AS A;

-- select * from student_learning;
    