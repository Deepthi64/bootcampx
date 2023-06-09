SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name;

SELECT COUNT(*) FROM students WHERE cohort_id IN (1,2,3);

SELECT id, name, cohort_id FROM students WHERE email IS NULL OR phone IS NULL;

SELECT name ,email, id, cohort_id FROM students WHERE phone IS NULL AND email  NOT LIKE '%@gmail.com';

SELECT name, id, cohort_id FROM students WHERE end_date IS NULL ORDER by cohort_id;

SELECT name, email, phone FROM students WHERE github IS NULL AND end_date IS NOT NULL;
