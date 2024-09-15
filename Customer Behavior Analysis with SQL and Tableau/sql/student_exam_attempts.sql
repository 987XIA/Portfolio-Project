USE customer_engagement;

SELECT 
	e.exam_attempt_id,
    e.student_id,
    e.exam_id,
    ei.exam_category,
    exam_passed,
    e.date_exam_completed AS date_exam_completed
FROM student_exams e
JOIN exam_info ei USING(exam_id);

