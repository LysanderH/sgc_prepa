<?php

/*
 *  Modifiez ce fichier afin d'y injecter les résultats de la requête
 *  que vous avez rédigée dans le fichier <groupe>_<nom>_<prenom>.sql.
 *
 *  Les films seront accessibles dans la variable $movies.
 *
 *  Renommez ce fichier comme il se doit (<groupe>_<nom>_<prenom>.php).
 *  N'ayez crainte, le système MVC a été adapté et continuera à 
 *  fonctionner malgré le renommage.
 */

?><!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>MyMovies - Des heures de plaisir !</title>
    <style>body,html{margin:0;padding:0}body{font:normal normal 16px/24px sans-serif;background:#f4f4f4}body *{box-sizing:border-box}.sro{position:absolute;top:-99999px;left:-99999px}.wrapper{width:1000px;margin:50px auto}.banner{padding:50px 0;background:#081c24}.banner__title{text-align:left;color:#fff}.movie:after,.movies__container:after{content:"";display:block;clear:left}.movie:nth-child(odd){clear:left}.movie:nth-child(even){margin-left:34px}.movie{margin-top:34px;width:483px;background-color:#fff;padding-right:12px;float:left;color:rgb(40%,40%,40%);-moz-box-shadow:0 2px 8px rgba(0,0,0,.2);-webkit-box-shadow:0 2px 8px rgba(0,0,0,.2);box-shadow:0 2px 8px rgba(0,0,0,.2)}.movie__info{width:275px;float:right}.movie__poster{width:185px;float:left;display:block;margin:0;padding:0}.movie__img{display:block;width:100%}.movie__head{padding:20px 0;border-bottom:1px solid rgb(92%,92%,92%);margin-bottom:20px}.movie__tagline,.movie__title{color:#081c24;margin:0}.movie__duration{font-weight:400}.movie__released{margin:5px 0;font-style:italic}.movie__cta,.movie__website{color:#27ae60;text-decoration:none;display:block}.movie__cta{padding:20px 0;border-top:1px solid rgb(92%,92%,92%)}</style>
</head>
<body>
    <header class="banner">
        <div class="wrapper">
            <h1 class="banner__title">MyMovies<span class="sro"> - Films de la catégorie "Drama".</span></h1>
        </div>
    </header>

    <section class="intro">
        <div class="wrapper">
            <h2 class="intro__title">À regarder</h2>
            <p class="intro__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum beatae quia blanditiis, ex, veritatis quae enim rerum voluptatibus cupiditate sed, dignissimos deleniti sit dolor reiciendis. Reiciendis vitae, aliquam laboriosam officiis?</p>
        </div>
    </section>

    <section class="movies">
        <div class="wrapper">
            <h2 class="movies__title">20 films de la catégorie <em>"Drama"</em> à regarder de toute urgence</h2>
            <p class="movies__sub">Triés par durée, car plus le film est long, mieux c'est&nbsp;!</p>

            <div class="movies__container">

                <?php foreach ($movies as $movie): ?>
                    <article class="movie">
                        <div class="movie__info">
                            <header class="movie__head">
                                <h3 class="movie__title"><?= $movie->title; ?><span class="movie__duration">(<?= $movie->duration; ?>&nbsp;minutes)</span></h3>
                                <p class="movie__tagline"><?= $movie->tagline; ?></p>
                                <p class="movie__released">Sorti en <time datetime="<?= $movie->released_at; ?>"><?= date("Y", strtotime($movie->released_at)); ?></time></p>
                                <a href="<?= $movie->website; ?>" class="movie__website">Site web <span class="sro">de <?= $movie->title; ?></span></a>
                            </header>
                            <div class="movie__overview">
                                <p><?= $movie->overview; ?></p>
                            </div>
                            <a href="http://my-movies/movie/<?= $movie->slug; ?>" class="movie__cta">Voir la fiche <span class="sro">de <?= $movie->title; ?></span></a>
                        </div>
                        <figure class="movie__poster">
                            <img src="<?= $movie->poster; ?>" alt="<?= $movie->title; ?> - <?= $movie->tagline; ?>" class="movie__img">
                        </figure>
                    </article>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

</body>
</html>
