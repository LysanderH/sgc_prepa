<?php

/* ************************************
 *
 * Définition des variables constantes
 * de chemins vers les ressources
 *
 * ************************************/

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', realpath(__DIR__ . DS .'..') . DS);
define('CONFIG_PATH', ROOT . 'config' . DS);
define('CORE_PATH', ROOT . 'core' . DS);
define('CONTROLLERS_PATH', CORE_PATH . 'Controllers' . DS);
define('SITES_PATH', CORE_PATH . 'Sites' . DS);
define('RESSOURCES_PATH', ROOT . 'ressources' . DS);
define('SQL_PATH', realpath(__DIR__ . DS .'..' . DS . '..') . DS);
define('VIEWS_PATH', realpath(__DIR__ . DS .'..' . DS . '..') . DS);
define('PUBLIC_PATH', ROOT . 'public' . DS);
