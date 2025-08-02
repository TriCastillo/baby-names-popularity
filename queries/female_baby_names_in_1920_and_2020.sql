-- Which female names appeared in both 1920 and 2020?
SELECT a.first_name, (a.num + b.num) AS total_occurrences
FROM baby_names AS a
JOIN baby_names AS b
USING (first_name)
WHERE a.year = 1920 AND a.sex = 'F' 
	AND b.year = 2020 AND b.sex = 'F'