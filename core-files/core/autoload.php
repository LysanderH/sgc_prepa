<?php

/* ***************************************************
 *
 * Ce fichier sert à charger tous les autres fichiers
 * dont on a besoin pour faire tourner ce projet.
 *
 * N'étant qu'un exemple, celui-ci est fait à la main. 
 * Sachez cependant qu'il y a des standards 
 * d'architecture de projets qui permettent de charger
 * les fichiers requis de façon automatique.
 *
 * Pour plus d'informations, visitez :
 * https://getcomposer.org/
 *
 * ****************************************************/

require_once(CORE_PATH . 'helpers.php');
require_once(CORE_PATH . 'App.php');
require_once(CORE_PATH . 'BaseSite.php');
require_once(CORE_PATH . 'BaseModel.php');
require_once(CORE_PATH . DS. 'Routes' . DS . 'Request.php');
require_once(CORE_PATH . DS. 'Routes' . DS . 'Router.php');
require_once(CORE_PATH . DS. 'Routes' . DS . 'Route.php');
require_once(CORE_PATH . DS. 'Render' . DS . 'View.php');
