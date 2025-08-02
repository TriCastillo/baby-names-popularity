-- What were the top 20 male names overall, and how did the name Paul rank?
SELECT RANK() OVER(
	ORDER BY SUM(num) DESC
) AS name_rank, first_name, SUM(num) AS sum
FROM baby_names
WHERE sex = 'M'
GROUP BY first_name
ORDER BY sum DESC
LIMIT 20;