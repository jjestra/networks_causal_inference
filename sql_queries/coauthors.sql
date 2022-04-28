SELECT aa1.author AS source, aa2.author AS target
--INTO adjacency_matrices.samephd
FROM tables.articles_authors aa1
LEFT JOIN tables.articles_authors AS aa2
USING(article)
WHERE aa1.year <= 2000 AND aa1.article = aa1.article AND aa1.author != aa2.author
ORDER BY source, target;