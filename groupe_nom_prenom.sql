# Indiquez ici une seule requête SQL capable de gérer l'affichage des 20 fiches de film
# pour la partie "Cas Pratique (PHP)".
# --
# Renommez ce fichier comme il se doit (<groupe>_<nom>_<prenom>.sql). N'ayez crainte, le
# système MVC a été adapté et continuera à fonctionner malgré le renommage.
SELECT m.title, m.slug, m.tagline, m.website, m.overview, m.poster, m.duration, m.status, m.released_at,g.name FROM movies m 
JOIN movies_genres mg ON mg.movie_id = m.id 
JOIN genres g ON g.id = mg.genre_id 
WHERE name = "Drama" ORDER BY duration DESC LIMIT 20;