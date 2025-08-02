-- List the overall top five names in alphabetical order and find out if each name is "Classic" or "Trendy."
SELECT first_name, COUNT(year) AS sum,
	CASE
		WHEN COUNT(year) > 50 THEN 'Classic'
		ELSE 'Trendy'
	END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name
LIMIT 5;