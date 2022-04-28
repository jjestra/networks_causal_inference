WITH s AS (
	SELECT aa1.author AS source, aa2.author AS target
	FROM tables.articles_authors aa1
	LEFT JOIN tables.articles_authors AS aa2
	USING(article)
	WHERE aa1.year <= 2000 AND aa1.article = aa1.article AND aa1.author != aa2.author
	ORDER BY source, target)
	
SELECT DISTINCT a1.article, a2.article
FROM s
LEFT JOIN tables.articles_authors AS a1
ON s.source = a1.author
LEFT JOIN tables.articles_authors AS a2
ON s.target = a2.author
WHERE a1.article != a2.article
AND a1.year <= 2000 AND a2.year <= 2000
ORDER BY a1.article, a2.article;