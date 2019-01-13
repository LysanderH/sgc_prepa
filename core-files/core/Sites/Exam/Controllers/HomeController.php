<?php

namespace SGBD\Sites\Exam\Controllers;

use \SGBD\App;
use \SGBD\Sites\Exam\Models\Movie;

/**
* Cette classe gère l'affichage de la 
* page d'accueil
*/
class HomeController
{
    public function show()
    {
        $data = [];
        $data['movies'] = Movie::makeRequest();
        return App::getView($data);
    }
}
