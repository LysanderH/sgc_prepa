# SGC examen

1. 2
1. Intégrité de domaine:  L’intégrité de domaine permet de vériﬁer que seules les valeurs appartenant au domaine de l’attribut sont ajoutées dans une table.

Intégrité de relation: L’intégrité de relation permet de vériﬁer que les valeurs de la clé primaire d’une table sont uniques et toujours déﬁnies.

Intégrité de référence: L’intégrité de référence indique que les valeurs contenues dans les colonnes qui forment la clé étrangère doivent : • soit exister dans les colonnes ”clé primaire” correspondantes, • soit ˆetre la valeur inconnue.
1. / Tableau associatif / join ?
1. Vrai, par exemple si c'est une table qui associe les résultats de deux tables. Les deux tables contiennent des cléfs primaire et le tableau associatif contient que des clefs étrangères.
1. SELECT COUNT(title) FROM movies;
1. SELECT COUNT(m.title), c.name FROM movies m
JOIN collections c ON m.collection_id = c.id
GROUP BY c.name;
1. SELECT COUNT(movie_id), g.name FROM `movies_genres` JOIN genres g ON g.id = genre_id GROUP BY genre_id LIMIT 1;
1. SELECT title FROM `movies` WHERE title LIKE '%king%';
1. INSERT INTO collections(name, slug) VALUES('Best-of de 2010', '18345-best-of-2010');
1. UPDATE `movies` SET `collection_id`= 4 WHERE created_at < DATE('2011-01-01');
1. /
1. DELETE movies FROM movies  
JOIN movies_genres mg ON mg.movie_id = movies.id  
JOIN genres g ON g.id = mg.genre_id  
WHERE g.name = 'Family';  
1. SELECT title, tagline, poster FROM movies ORDER BY released_at, created_at LIMIT 10;
1. UPDATE movies SET status='Archived' WHERE released_at < DATE('1980-01-01');