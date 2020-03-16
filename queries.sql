## Part 1: Test it with SQL
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'job'
ORDER BY ORDINAL_POSITION;

## Part 2: Test it with SQL
SELECT name
FROM employer
WHERE location LIKE '%St%Louis%';

## Part 3: Test it with SQL
DROP TABLE job;

## Part 4: Test it with SQL
SELECT s.name, s.description
FROM skill s
WHERE s.name IS NOT NULL
  AND (s.id in
		( SELECT DISTINCT skills_id
			FROM job_skills js
			WHERE js.jobs_id IS NOT NULL))
ORDER BY 1;