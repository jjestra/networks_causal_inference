WITH s AS (
	SELECT author, phd_inst, phd_year
	FROM tables.authors_char
	WHERE phd_inst IS NOT NULL AND phd_year IS NOT NULL)

SELECT s1.author AS source, s2.author AS targuet
--INTO adjacency_matrices.samephd
FROM s AS s1
LEFT JOIN s AS s2
USING (phd_inst)
WHERE s1.author != s2.author 
AND s1.phd_year > s2.phd_year - 4 
AND s1.phd_year < s2.phd_year + 4
AND s1.author IN (SELECT DISTINCT author FROM tables.articles_authors WHERE year <= 2000)
AND s2.author IN (SELECT DISTINCT author FROM tables.articles_authors WHERE year <= 2000)
ORDER BY s1.author, s2.author;